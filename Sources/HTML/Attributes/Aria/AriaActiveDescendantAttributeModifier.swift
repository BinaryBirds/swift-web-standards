//
//  AriaActiveDescendantAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaActiveDescendantAttributeModifier {
    associatedtype
        AriaActiveDescendantAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaActiveDescendantAttributeModifier
where Self: Attributes & Mutable {

    public func ariaActiveDescendant(
        _ value: AriaActiveDescendantAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.activeDescendant,
            value: value?.attributeValue
        )
    }
}
