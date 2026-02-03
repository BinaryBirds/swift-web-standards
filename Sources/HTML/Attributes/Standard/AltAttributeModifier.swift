//
//  AltAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AltAttributeModifier {
    associatedtype AltAttributeValueType: AttributeValueRepresentable = String
}

extension AltAttributeModifier where Self: Attributes & Mutable {

    public func alt(
        _ value: AltAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.alt,
            value: value?.attributeValue
        )
    }
}
