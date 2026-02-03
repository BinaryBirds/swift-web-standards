//
//  AbbrAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AbbrAttributeModifier {
    associatedtype AbbrAttributeValueType: AttributeValueRepresentable = String
}

extension AbbrAttributeModifier where Self: Attributes & Mutable {

    public func abbr(
        _ value: AbbrAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.abbr,
            value: value?.attributeValue
        )
    }
}
