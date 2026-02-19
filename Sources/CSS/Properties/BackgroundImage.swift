//
//  BackgroundImage.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// CSS `background-image` property.
/// Provides typed values for this declaration.
public struct BackgroundImage: Property {
    /// Value options for the `background-image` property.
    public enum Value: Sendable {
        /// The URL to the image. To specify more than one image, separate the URLs with a comma.
        case url(String)
        /// No background image will be displayed. This is default.
        case none
        // @TODO: add gradient support
        //    case radial-gradient()    Sets a radial gradient as the background image. Define at least two colors (center to edges)
        //    case repeating-linear-gradient()    Repeats a linear gradient
        //    case repeating-radial-gradient()    Repeats a radial gradient
        case linearGradient(LinearGradient)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

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

    /// Specifies one or more background images for an element.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "background-image"
        self.value = value.rawValue
        self.isImportant = false
    }
}

// MARK: - Linear Gradient

public struct LinearGradient: Sendable {
    public enum Direction: Sendable {
        case angle(Double)  // degrees
        case to(SideOrCorner)  // e.g. to bottom, to bottom right

        var cssValue: String {
            switch self {
            case .angle(let deg):
                // CSS: "180deg"
                // (Ha szeretnél rad/turn támogatást is, bővíthető.)
                return "\(trimTrailingZeros(deg))deg"
            case .to(let soc):
                return "to \(soc.cssValue)"
            }
        }
    }

    public enum Side: String, Sendable {
        case top, right, bottom, left
    }

    public enum SideOrCorner: Sendable {
        case side(Side)
        case corner(Side, Side)  // pl. .corner(.bottom, .right)

        var cssValue: String {
            switch self {
            case .side(let s):
                return s.rawValue
            case .corner(let a, let b):
                // CSS-ben a sorrend számít UX-ben kevésbé, de valid: "bottom right"
                return "\(a.rawValue) \(b.rawValue)"
            }
        }
    }

    public struct ColorStop: Sendable {
        public let color: CSSColor
        /// 0–2 position value, pl. ["15%"] vagy ["15%", "20%"]
        public let positions: [UnitRepresentable]

        public init(_ color: CSSColor, positions: [UnitRepresentable] = []) {
            self.color = color
            self.positions = positions
        }

        public init(_ color: CSSColor, _ positions: UnitRepresentable...) {
            self.init(color, positions: positions)
        }

        var cssValue: String {
            if positions.isEmpty {
                return color.rawValue
            }
            return ([color.rawValue] + positions.map(\.rawValue))
                .joined(separator: " ")
        }
    }

    public let direction: Direction?
    public let stops: [ColorStop]

    /// - Parameters:
    ///   - direction: nil esetén a CSS default (to bottom)
    ///   - stops: legalább 2 stop ajánlott (CSS szerint is az értelmes)
    public init(direction: Direction? = nil, stops: [ColorStop]) {
        self.direction = direction
        self.stops = stops
    }

    var cssValue: String {
        let stopList = stops.map(\.cssValue).joined(separator: ", ")
        if let direction {
            return "linear-gradient(\(direction.cssValue), \(stopList))"
        }
        return "linear-gradient(\(stopList))"
    }
}

// MARK: - Small helpers

private func trimTrailingZeros(_ value: Double) -> String {
    // 180.0 -> "180", 15.30 -> "15.3"
    var s = String(value)
    if s.contains(".") {
        while s.last == "0" { s.removeLast() }
        if s.last == "." { s.removeLast() }
    }
    return s
}
