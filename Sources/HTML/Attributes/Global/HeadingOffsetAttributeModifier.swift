import SGML

/// Provides access to the HTML `headingoffset` global attribute.
public protocol HeadingOffsetAttributeModifier {
    associatedtype
        HeadingOffsetAttributeValueType: AttributeValueRepresentable = Int
}

extension HeadingOffsetAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `headingoffset` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func headingOffset(
        _ value: HeadingOffsetAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.headingoffset,
            value: value?.attributeValue
        )
    }
}
