import SGML

/// Provides access to the HTML `slot` global attribute.
public protocol SlotAttributeModifier {
    associatedtype SlotAttributeValueType: AttributeValueRepresentable = String
}

extension SlotAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `slot` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func slot(
        _ value: SlotAttributeValueType?
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.slot, value: value?.attributeValue)
    }
}
