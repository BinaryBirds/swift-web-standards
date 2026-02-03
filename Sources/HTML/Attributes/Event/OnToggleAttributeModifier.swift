//
//  OnToggleAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnToggleAttributeModifier {
    associatedtype OnToggleAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnToggleAttributeModifier where Self: Attributes & Mutable {

    public func onToggle(
        _ value: OnToggleAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.toggle,
            value: value?.attributeValue
        )
    }
}
