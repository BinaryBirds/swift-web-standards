//
//  FontWeight.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.
//

/// CSS `font-weight` property.
///
/// Provides typed values and numeric support for font weight declarations.
///
/// ### Examples
/// ```swift
/// FontWeight(.normal)
/// FontWeight(.bold)
/// FontWeight(.w400)       // -> "400"
/// FontWeight(.number(550))
/// FontWeight(700)         // -> "700"
/// ```
public struct FontWeight: Property {

    /// Value options for the `font-weight` property.
    public enum Value: Sendable {
        /// Defines normal characters. This is default.
        case normal
        /// Defines thick characters.
        case bold
        /// Defines thicker characters.
        case bolder
        /// Defines lighter characters.
        case lighter

        /// A numeric font weight.
        ///
        /// Typical values are `100...900` in increments of `100`,
        /// but variable fonts may support intermediate values.
        ///
        /// - Note: Negative values are not valid in CSS.
        case number(Int)

        /// Convenience numeric values.
        ///
        /// `w400` is equivalent to `normal`, and `w700` is equivalent to `bold`.
        case w100, w200, w300, w400, w500, w600, w700, w800, w900

        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        /// Rendered CSS value.
        var cssValue: String {
            switch self {
            case .normal: return "normal"
            case .bold: return "bold"
            case .bolder: return "bolder"
            case .lighter: return "lighter"

            case .number(let value):
                return String(value)

            case .w100: return "100"
            case .w200: return "200"
            case .w300: return "300"
            case .w400: return "400"
            case .w500: return "500"
            case .w600: return "600"
            case .w700: return "700"
            case .w800: return "800"
            case .w900: return "900"

            case .initial: return "initial"
            case .inherit: return "inherit"
            }
        }

        public var rawValue: String { cssValue }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the weight of a font.
    ///
    /// - Parameter value: The property value.
    public init(_ value: Value = .normal) {
        self.name = "font-weight"
        self.value = value.cssValue
        self.isImportant = false
    }

    /// Specifies the weight of a font using a numeric value.
    ///
    /// - Parameter value: A numeric font weight value.
    public init(_ value: Int) {
        self.init(.number(value))
    }
}
