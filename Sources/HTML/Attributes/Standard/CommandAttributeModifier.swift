//
//  CommandAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol CommandAttributeModifier {
    associatedtype CommandAttributeValueType: AttributeValueRepresentable =
        String
}

extension CommandAttributeModifier where Self: Attributes & Mutable {

    public func command(
        _ value: CommandAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.command,
            value: value?.attributeValue
        )
    }
}
