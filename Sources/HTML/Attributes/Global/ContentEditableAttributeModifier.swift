//
//  ContentEditableAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Provides access to the HTML `contenteditable` global attribute.
public protocol ContentEditableAttributeModifier {
    associatedtype
        ContentEditableAttributeValueType: AttributeValueRepresentable = String
}

extension ContentEditableAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `contenteditable` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func contentEditable(
        _ value: ContentEditableAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.contenteditable,
            value: value?.attributeValue
        )
    }
}
