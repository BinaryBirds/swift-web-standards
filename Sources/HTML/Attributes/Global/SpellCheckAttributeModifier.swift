import SGML

/// Provides access to the HTML `spellcheck` global attribute.
public protocol SpellCheckAttributeModifier {

}

extension SpellCheckAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `spellcheck` global attribute.
    /// - Parameter value: `true` to enable spellchecking, `false` to disable it.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func spellCheck(
        _ value: Bool
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.spellcheck, value: String(value))
    }
}
