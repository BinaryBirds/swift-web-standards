//
//  IdAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Provides access to the HTML `id` global attribute.
public protocol IdAttributeModifier {
    associatedtype IdAttributeValueType: AttributeValueRepresentable = String
}

extension IdAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `id` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func id(
        _ value: IdAttributeValueType?
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.id, value: value?.attributeValue)
    }
}
