import SGML

/// Provides access to the HTML `accesskey` global attribute.
public protocol AccessKeyAttributeModifier {
    associatedtype AccessKeyAttributeValueType: AttributeValueRepresentable =
        String
}

extension AccessKeyAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `accesskey` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func accessKey(
        _ value: AccessKeyAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.accesskey,
            value: value?.attributeValue
        )
    }
}
