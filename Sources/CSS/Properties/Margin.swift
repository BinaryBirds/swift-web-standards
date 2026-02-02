/// CSS `margin` property.
/// Provides typed values for this declaration.
public struct Margin: Property {
    /// Value options for the `margin` property.
    public enum Value: Sendable {
        /// Specifies a fixed bottom margin in px, cm, em, etc. Default value is 0. Negative values are allowed.
        case length(UnitRepresentable)
        // The browser calculates a bottom margin
        case auto
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .length(let value):
                return value.rawValue
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

    /// Sets all the margin properties in one declaration.
    /// - Parameter value: The property value.
    public init(
        _ value: Value
    ) {
        self.name = "margin"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Creates a `margin` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameter value: The property value.
    public init(_ value: UnitRepresentable = 0) {
        self.init(.length(value))
    }

    /// Creates a `margin` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameters:
    ///   - horizontal: The horizontal value.
    ///   - vertical: The vertical value.
    public init(
        horizontal: Value,
        vertical: Value
    ) {
        self.name = "margin"
        self.value = horizontal.rawValue + " " + vertical.rawValue
        self.isImportant = false
    }

    /// Creates a `margin` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameters:
    ///   - horizontal: The horizontal value.
    ///   - vertical: The vertical value.
    public init(
        horizontal: UnitRepresentable = 0,
        vertical: UnitRepresentable = 0
    ) {
        self.init(horizontal: .length(horizontal), vertical: .length(vertical))
    }

    /// Creates a `margin` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameters:
    ///   - top: The top value.
    ///   - right: The right value.
    ///   - bottom: The bottom value.
    ///   - left: The left value.
    public init(
        top: Value,
        right: Value,
        bottom: Value,
        left: Value,
    ) {
        self.name = "margin"
        self.value =
            top.rawValue + " " + right.rawValue + " " + bottom.rawValue + " "
            + left.rawValue
        self.isImportant = false
    }

    /// Creates a `margin` declaration.
    /// Used by `StylesheetRenderer` when emitting CSS.
    /// - Parameters:
    ///   - top: The top value.
    ///   - right: The right value.
    ///   - bottom: The bottom value.
    ///   - left: The left value.
    public init(
        top: UnitRepresentable = 0,
        right: UnitRepresentable = 0,
        bottom: UnitRepresentable = 0,
        left: UnitRepresentable = 0
    ) {
        self.init(
            top: .length(top),
            right: .length(right),
            bottom: .length(bottom),
            left: .length(left)
        )
    }
}
