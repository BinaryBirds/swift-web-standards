import SGML

/// Provides access to the HTML `style` global attribute.
public protocol StyleAttributeModifier {
    associatedtype StyleAttributeValueType: AttributeValueRepresentable = String
}

extension StyleAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `style` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func style(
        _ value: StyleAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.style,
            value: value?.attributeValue
        )
    }
}
