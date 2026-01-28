import SGML

/// Provides access to the HTML `inert` global attribute.
public protocol InertAttributeModifier {
}

extension InertAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `inert` boolean attribute.
    /// - Returns: A modified copy of the element with `inert` set.
    public func inert() -> Self {
        setAttribute(key: GlobalAttributeKey.inert)
    }
}
