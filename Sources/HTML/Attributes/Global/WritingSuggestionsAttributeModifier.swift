//
//  WritingSuggestionsAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Provides access to the HTML `writingsuggestions` global attribute.
public protocol WritingSuggestionsAttributeModifier {
    associatedtype
        WritingSuggestionsAttributeValueType: AttributeValueRepresentable =
        String
}

extension WritingSuggestionsAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `writingsuggestions` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func writingSuggestions(
        _ value: WritingSuggestionsAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.writingsuggestions,
            value: value?.attributeValue
        )
    }
}
