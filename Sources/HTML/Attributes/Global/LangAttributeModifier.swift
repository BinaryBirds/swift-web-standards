import SGML

/// Provides access to the HTML `lang` global attribute.
public protocol LangAttributeModifier {
    associatedtype LangAttributeValueType: AttributeValueRepresentable = String
}

extension LangAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `lang` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func lang(
        _ value: LangAttributeValueType?
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.lang, value: value?.attributeValue)
    }
}
