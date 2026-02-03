//
//  AriaExpandedAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaExpandedAttributeModifier {
    associatedtype AriaExpandedAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaExpandedAttributeModifier where Self: Attributes & Mutable {

    public func ariaExpanded(
        _ value: AriaExpandedAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.expanded,
            value: value?.attributeValue
        )
    }
}
