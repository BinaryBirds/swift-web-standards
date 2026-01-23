import SGML

/// Provides access to the HTML `role` global attribute.
public protocol RoleAttributeModifier {
    associatedtype RoleAttributeValueType: AttributeValueRepresentable = String
}

extension RoleAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `role` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func role(
        _ value: RoleAttributeValueType?
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.role, value: value?.attributeValue)
    }
}
