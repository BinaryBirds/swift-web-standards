//
//  TabIndexAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Provides access to the HTML `tabindex` global attribute.
public protocol TabIndexAttributeModifier {
    associatedtype TabIndexAttributeValueType: AttributeValueRepresentable = Int
}

extension TabIndexAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `tabindex` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func tabIndex(
        _ value: TabIndexAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.tabindex,
            value: value?.attributeValue
        )
    }
}
