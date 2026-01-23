import SGML

/// Values for the HTML `dir` global attribute.
public enum DirAttributeValue: String, AttributeValueRepresentable {
    /// The contents of the element are explicitly directionally isolated left-to-right text.
    case ltr
    /// The contents of the element are explicitly directionally isolated right-to-left text.
    case rtl
    /// The contents of the element are explicitly directionally isolated text, but the direction is to be determined programmatically using the contents of the element (as described below).
    case auto
}

/// Provides access to the HTML `dir` global attribute.
public protocol DirAttributeModifier {
    associatedtype DirAttributeValueType: AttributeValueRepresentable =
        DirAttributeValue
}

extension DirAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `dir` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func dir(
        _ value: DirAttributeValueType?
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.dir, value: value?.attributeValue)
    }
}
