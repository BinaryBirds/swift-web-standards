//
//  ItemIdAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Provides access to the HTML `itemid` global attribute.
public protocol ItemIdAttributeModifier {
    associatedtype ItemIdAttributeValueType: AttributeValueRepresentable =
        String
}

extension ItemIdAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `itemid` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func itemId(
        _ value: ItemIdAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.itemid,
            value: value?.attributeValue
        )
    }
}
