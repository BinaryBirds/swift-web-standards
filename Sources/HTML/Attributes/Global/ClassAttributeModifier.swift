import SGML

/// Provides access to the HTML `class` global attribute.
public protocol ClassAttributeModifier {
    associatedtype ClassAttributeValueType: AttributeValueRepresentable = String
}

extension ClassAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `class` attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func setClass(
        _ value: ClassAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.`class`,
            value: value?.attributeValue
        )
    }

    /// Adds a value to the HTML `class` attribute.
    /// - Parameter value: The class value to add. Pass `nil` to skip adding.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func addClass(
        _ value: ClassAttributeValueType?
    ) -> Self {
        addAttribute(
            key: GlobalAttributeKey.`class`,
            value: value?.attributeValue
        )
    }

    /// Removes a value from the HTML `class` attribute.
    /// - Parameter value: The class value to remove. Pass `nil` to skip removing.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func removeClass(
        _ value: ClassAttributeValueType?
    ) -> Self {
        removeAttribute(
            key: GlobalAttributeKey.`class`,
            value: value?.attributeValue
        )
    }

    /// Toggles a value in the HTML `class` attribute.
    /// - Parameter value: The class value to toggle. Pass `nil` to skip toggling.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func toggleClass(
        _ value: ClassAttributeValueType?
    ) -> Self {
        if hasAttribute(
            key: GlobalAttributeKey.`class`,
            value: value?.attributeValue
        ) {
            removeAttribute(
                key: GlobalAttributeKey.`class`,
                value: value?.attributeValue
            )
        }
        else {
            addAttribute(
                key: GlobalAttributeKey.`class`,
                value: value?.attributeValue
            )
        }
    }

    // MARK: -

    /// Adds multiple values to the HTML `class` attribute.
    /// - Parameter values: The class values to add.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func `class`(
        _ values: [ClassAttributeValueType]
    ) -> Self {
        var mutatingSelf = self
        for item in values {
            mutatingSelf = mutatingSelf.addClass(item)
        }
        return mutatingSelf
    }

    /// Adds multiple values to the HTML `class` attribute.
    /// - Parameter values: The class values to add.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func `class`(
        _ values: ClassAttributeValueType...
    ) -> Self {
        `class`(values)
    }
}
