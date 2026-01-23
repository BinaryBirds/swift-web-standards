import SGML

/// Provides access to the HTML `itemprop` global attribute.
public protocol ItemPropAttributeModifier {
    associatedtype ItemPropAttributeValueType: AttributeValueRepresentable =
        String
}

extension ItemPropAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `itemprop` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func itemProp(
        _ value: ItemPropAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.itemprop,
            value: value?.attributeValue
        )
    }
}
