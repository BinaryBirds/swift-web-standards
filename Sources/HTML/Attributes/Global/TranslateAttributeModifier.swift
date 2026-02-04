//
//  TranslateAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Values for the HTML `translate` global attribute.
public enum TranslateAttributeValue: String, Sendable,
    AttributeValueRepresentable
{
    /// Specifies that the content of the element should be translated.
    case yes
    /// Specifies that the content of the element must not be translated.
    case no
}

/// Provides access to the HTML `translate` global attribute.
public protocol TranslateAttributeModifier {
    associatedtype TranslateAttributeValueType: AttributeValueRepresentable =
        TranslateAttributeValue
}

extension TranslateAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `translate` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func translate(
        _ value: TranslateAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.translate,
            value: value?.attributeValue
        )
    }
}
