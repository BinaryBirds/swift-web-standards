//
//  BackgroundImage.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.
//

/// A typed representation of the CSS `background-image` property.
///
/// Use ``BackgroundImage`` to describe one background image value such as:
/// - an image `url(...)`
/// - a gradient (currently ``LinearGradient``)
///
/// > Note:
/// This type represents a **single** `background-image` value.
/// The CSS property can technically accept multiple values separated by commas
/// (e.g. multiple layers). If you need that in the future, consider adding a
/// `.multiple([Value])` case or a dedicated layer type.
public struct BackgroundImage: Property {

    /// Typed value options for the `background-image` property.
    public enum Value: Sendable {

        /// An image resource referenced by URL.
        ///
        /// Renders as: `url('<value>')`
        case url(String)

        /// No background image will be displayed.
        ///
        /// Renders as: `none`
        case none
        // @TODO: add gradient support
        //    case radial-gradient()    Sets a radial gradient as the background image. Define at least two colors (center to edges)
        //    case repeating-linear-gradient()    Repeats a linear gradient
        //    case repeating-radial-gradient()    Repeats a radial gradient
        /// A linear gradient background image.
        ///
        /// Renders as: `linear-gradient(...)`
        case linearGradient(LinearGradient)

        /// Sets this property to its initial value.
        ///
        /// Renders as: `initial`
        case initial

        /// Inherits this property from its parent element.
        ///
        /// Renders as: `inherit`
        case inherit

        /// The rendered CSS value for this case.
        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .url(let value):
                return "url('\(value)')"
            case .linearGradient(let gradient):
                return gradient.cssValue
            case .initial:
                return "initial"
            case .inherit:
                return "inherit"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Creates a `background-image` property.
    ///
    /// - Parameter value: The typed ``Value`` to render.
    public init(_ value: Value) {
        self.name = "background-image"
        self.value = value.rawValue
        self.isImportant = false
    }
}

// MARK: - Linear Gradient

/// A typed representation of the CSS `linear-gradient(...)` function.
///
/// This models the most common form:
/// ```css
/// linear-gradient([<angle> | to <side-or-corner>]?, <color-stop>+)
/// ```
///
/// A gradient consists of:
/// - an optional ``Direction`` (angle or `to ...`)
/// - a list of ``ColorStop`` values
///
/// ### Examples
/// ```swift
/// let gradient = LinearGradient(
///     direction: .angle(180),
///     stops: [
///         .init(.hex("0A9AA5"), 15.percent),
///         .init(.hex("068892"), 55.percent),
///         .init(.hex("046C74"), 90.percent),
///     ]
/// )
/// let bg = BackgroundImage(.linearGradient(gradient))
/// ```
public struct LinearGradient: Sendable {

    /// The direction of a linear gradient.
    ///
    /// In CSS this can be either:
    /// - an angle, e.g. `180deg`
    /// - a direction keyword form, e.g. `to bottom right`
    ///
    /// > Note:
    /// Angle-based directions accept any ``AngleRepresentable`` value,
    /// such as `180.deg`, `0.5.turn`, or `3.14.rad`.
    public enum Direction: Sendable {

        /// An angle-based direction (e.g. `180deg`, `0.5turn`).
        case angle(any AngleRepresentable)

        /// A keyword direction (e.g. `to bottom`, `to bottom right`).
        case to(SideOrCorner)

        /// The rendered CSS value for this direction.
        var cssValue: String {
            switch self {
            case .angle(let angle):
                return angle.rawValue
            case .to(let soc):
                return "to \(soc.cssValue)"
            }
        }
    }

    /// A single side keyword used in the `to ...` direction syntax.
    public enum Side: String, Sendable {
        case top, right, bottom, left
    }

    /// A `to ...` direction target: either a single side or a corner.
    ///
    /// - `side(.bottom)` renders as: `bottom`
    /// - `corner(.bottom, .right)` renders as: `bottom right`
    public enum SideOrCorner: Sendable {

        /// A single side keyword (e.g. `bottom`).
        case side(Side)

        /// A corner composed of two sides (e.g. `bottom right`).
        case corner(Side, Side)

        /// The rendered CSS value for this direction.
        var cssValue: String {
            switch self {
            case .side(let s):
                return s.rawValue
            case .corner(let a, let b):
                return "\(a.rawValue) \(b.rawValue)"
            }
        }
    }

    /// A single color stop in a linear gradient.
    ///
    /// A color stop consists of:
    /// - a ``CSSColor``
    /// - zero, one, or two optional position values (e.g. `15%` or `15% 20%`)
    ///
    /// Position values are represented as ``UnitRepresentable`` so you can use
    /// typed units like `15.percent`, `12.px`, etc.
    public struct ColorStop: Sendable {

        /// The stop color.
        public let color: CSSColor

        /// Zero, one, or two optional stop positions.
        ///
        /// Examples:
        /// - `[]` → only color
        /// - `[15.percent]` → color + one position
        /// - `[15.percent, 20.percent]` → hard stop / range
        public let positions: [UnitRepresentable]

        /// Creates a color stop with an optional list of positions.
        ///
        /// - Parameters:
        ///   - color: The stop color.
        ///   - positions: Optional stop positions.
        public init(_ color: CSSColor, positions: [UnitRepresentable] = []) {
            self.color = color
            self.positions = positions
        }

        /// Creates a color stop with a variadic list of positions.
        ///
        /// - Parameters:
        ///   - color: The stop color.
        ///   - positions: Zero, one, or two position values.
        public init(_ color: CSSColor, _ positions: UnitRepresentable...) {
            self.init(color, positions: positions)
        }

        /// The rendered CSS value for this stop.
        ///
        /// Examples:
        /// - `#0A9AA5`
        /// - `#0A9AA5 15%`
        /// - `#0A9AA5 15% 20%`
        var cssValue: String {
            if positions.isEmpty {
                return color.rawValue
            }
            return ([color.rawValue] + positions.map(\.rawValue))
                .joined(separator: " ")
        }
    }

    /// The optional gradient direction.
    ///
    /// If `nil`, CSS defaults to `to bottom`.
    public let direction: Direction?

    /// The ordered list of gradient color stops.
    public let stops: [ColorStop]

    /// Creates a linear gradient.
    ///
    /// - Parameters:
    ///   - direction: Optional gradient direction. If `nil`, CSS defaults to `to bottom`.
    ///   - stops: The color stops. In practice you should provide at least 2.
    public init(direction: Direction? = nil, stops: [ColorStop]) {
        self.direction = direction
        self.stops = stops
    }

    /// The rendered CSS function for this linear gradient.
    var cssValue: String {
        let stopList = stops.map(\.cssValue).joined(separator: ", ")
        if let direction {
            return "linear-gradient(\(direction.cssValue), \(stopList))"
        }
        return "linear-gradient(\(stopList))"
    }
}
