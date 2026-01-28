import SGML

/// Provides access to the HTML `nonce` global attribute.
public protocol NonceAttributeModifier {
    associatedtype NonceAttributeValueType: AttributeValueRepresentable = String
}

extension NonceAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `nonce` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func nonce(
        _ value: NonceAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.nonce,
            value: value?.attributeValue
        )
    }
}
