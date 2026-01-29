/// Result builder used to assemble arrays of CSS elements and properties.
///
/// This builder is used across stylesheet, rule, and selector initializers to
/// provide a DSL-style construction API.
@resultBuilder
public enum Builder<Element> {

    // Turn a single expression into a component
    /// Wraps a single expression as a component array.
    /// - Parameter expression: The element to wrap.
    /// - Returns: An array containing the element.
    public static func buildExpression(
        _ expression: Element
    ) -> [Element] {
        [expression]
    }

    // Combine components from the block
    /// Flattens the components in a builder block.
    /// - Parameter components: Arrays of components produced by the builder.
    /// - Returns: A flattened array of elements.
    public static func buildBlock(
        _ components: [Element]...
    ) -> [Element] {
        components.flatMap { $0 }
    }

    // if without else
    /// Handles an optional branch.
    /// - Parameter component: The optional component array.
    /// - Returns: The component array or an empty array when `nil`.
    public static func buildOptional(
        _ component: [Element]?
    ) -> [Element] {
        component ?? []
    }

    // if/else
    /// Handles the `if` branch of a conditional.
    /// - Parameter component: The component array.
    /// - Returns: The component array.
    public static func buildEither(
        first component: [Element]
    ) -> [Element] {
        component
    }

    /// Handles the `else` branch of a conditional.
    /// - Parameter component: The component array.
    /// - Returns: The component array.
    public static func buildEither(
        second component: [Element]
    ) -> [Element] {
        component
    }

    // for loops
    /// Flattens arrays produced by `for` loops inside the builder.
    /// - Parameter components: Arrays of component arrays.
    /// - Returns: A flattened array of elements.
    public static func buildArray(
        _ components: [[Element]]
    ) -> [Element] {
        components.flatMap { $0 }
    }

    // #available, etc.
    /// Handles limited availability branches.
    /// - Parameter component: The component array.
    /// - Returns: The component array.
    public static func buildLimitedAvailability(
        _ component: [Element]
    ) -> [Element] {
        component
    }
}
