//
//  TypeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol TypeAttributeModifier {
    associatedtype TypeAttributeValueType: AttributeValueRepresentable = String
}

extension TypeAttributeModifier where Self: Attributes & Mutable {

    public func type(
        _ value: TypeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.type,
            value: value?.attributeValue
        )
    }
}
