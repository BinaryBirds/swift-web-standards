import SGML

/// Values for the HTML `enterkeyhint` global attribute.
public enum EnterKeyHintAttributeValue: String, AttributeValueRepresentable {
    /// Presents a cue for the operation "enter".
    case enter
    /// Presents a cue for the operation "done".
    case done
    /// Presents a cue for the operation "go".
    case go
    /// Presents a cue for the operation "next".
    case next
    /// Presents a cue for the operation "previous".
    case previous
    /// Presents a cue for the operation "search".
    case search
    /// Presents a cue for the operation "send".
    case send
}

/// Provides access to the HTML `enterkeyhint` global attribute.
public protocol EnterKeyHintAttributeModifier {
    associatedtype EnterKeyHintAttributeValueType: AttributeValueRepresentable =
        EnterKeyHintAttributeValue
}

extension EnterKeyHintAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `enterkeyhint` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func enterKeyHint(
        _ value: EnterKeyHintAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.enterkeyhint,
            value: value?.attributeValue
        )
    }
}
