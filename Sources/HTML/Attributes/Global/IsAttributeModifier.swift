import SGML

/// Provides access to the HTML `is` global attribute.
public protocol IsAttributeModifier {
    associatedtype IsAttributeValueType: AttributeValueRepresentable = String
}

extension IsAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `is` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func `is`(
        _ value: IsAttributeValueType?
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.`is`, value: value?.attributeValue)
    }
}
