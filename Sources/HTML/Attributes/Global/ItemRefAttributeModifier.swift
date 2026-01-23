import SGML

/// Provides access to the HTML `itemref` global attribute.
public protocol ItemRefAttributeModifier {
    associatedtype ItemRefAttributeValueType: AttributeValueRepresentable =
        String
}

extension ItemRefAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `itemref` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func itemRef(
        _ value: ItemRefAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.itemref,
            value: value?.attributeValue
        )
    }
}
