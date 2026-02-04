//
//  AutoCapitalizeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Values for the HTML `autocapitalize` global attribute.
public enum AutoCapitalizeAttributeValue: String, AttributeValueRepresentable {
    /// Keyword: off. State: none.
    case off = "off"

    /// Keyword: none. State: none.
    case none = "none"

    /// Keyword: on. State: sentences.
    case on = "on"

    /// Keyword: sentences. State: sentences.
    case sentences = "sentences"

    /// Keyword: words. State: words.
    case words = "words"

    /// Keyword: characters. State: characters.
    case characters = "characters"
}

/// Provides access to the HTML `autocapitalize` global attribute.
public protocol AutoCapitalizeAttributeModifier {
    associatedtype
        AutoCapitalizeAttributeValueType: AttributeValueRepresentable =
        AutoCapitalizeAttributeValue
}

extension AutoCapitalizeAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `autocapitalize` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func autoCapitalize(
        _ value: AutoCapitalizeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.autocapitalize,
            value: value?.attributeValue
        )
    }
}
