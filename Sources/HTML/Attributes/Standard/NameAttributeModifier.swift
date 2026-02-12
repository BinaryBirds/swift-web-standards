//
//  NameAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

public protocol NameAttributeModifier {
    associatedtype NameAttributeValueType: AttributeValueRepresentable = String
}

extension NameAttributeModifier where Self: Attributes & Mutable {

    /// Sets a name attribute.
    public func name(
        _ value: NameAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.name,
            value: value?.attributeValue
        )
    }
}
