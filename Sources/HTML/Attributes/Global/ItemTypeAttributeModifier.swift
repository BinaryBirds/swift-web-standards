//
//  ItemTypeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Provides access to the HTML `itemtype` global attribute.
public protocol ItemTypeAttributeModifier {
    associatedtype ItemTypeAttributeValueType: AttributeValueRepresentable =
        String
}

extension ItemTypeAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `itemtype` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func itemType(
        _ value: ItemTypeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.itemtype,
            value: value?.attributeValue
        )
    }
}
