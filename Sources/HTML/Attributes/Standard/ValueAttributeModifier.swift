//
//  ValueAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ValueAttributeModifier {
    associatedtype ValueAttributeValueType: AttributeValueRepresentable = String
}

extension ValueAttributeModifier where Self: Attributes & Mutable {

    public func value(
        _ value: ValueAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.value,
            value: value?.attributeValue
        )
    }
}
