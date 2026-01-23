import SGML

/// Provides access to the HTML `hidden` global attribute.
public protocol HiddenAttributeModifier {
}

extension HiddenAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `hidden` boolean attribute.
    /// - Returns: A modified copy of the element with `hidden` set.
    public func hidden() -> Self {
        setAttribute(key: GlobalAttributeKey.hidden)
    }
}
