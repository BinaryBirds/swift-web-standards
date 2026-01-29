/// CSS `column-rule-style` property.
/// Provides typed values for this declaration.
public struct ColumnRuleStyle: Property {
    /// Value options for the `column-rule-style` property.
    public enum Value: String, Sendable {
        /// Default value. Defines no rule.
        case none
        /// Defines a hidden rule.
        case hidden
        /// Defines a dotted rule.
        case dotted
        /// Defines a dashed rule.
        case dashed
        /// Defines a solid rule.
        case solid
        /// Defines a double rule.
        case double
        /// Specifies a 3D grooved rule. The effect depends on the width and color values.
        case groove
        /// Specifies a 3D ridged rule. The effect depends on the width and color values.
        case ridge
        /// Specifies a 3D inset rule. The effect depends on the width and color values.
        case inset
        /// Specifies a 3D outset rule. The effect depends on the width and color values.
        case outset
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the style of the rule between columns.
    /// - Parameter value: The property value.
    public init(
        _ value: Value = .none
    ) {
        self.name = "column-rule-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
