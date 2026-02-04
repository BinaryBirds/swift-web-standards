//
//  AutoCorrectAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Provides access to the HTML `autocorrect` global attribute.
public protocol AutoCorrectAttributeModifier {
    associatedtype AutoCorrectAttributeValueType: AttributeValueRepresentable =
        String
}

extension AutoCorrectAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `autocorrect` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func autoCorrect(
        _ value: AutoCorrectAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.autocorrect,
            value: value?.attributeValue
        )
    }
}
