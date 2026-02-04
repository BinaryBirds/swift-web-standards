//
//  AriaPosInSetAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaPosInSetAttributeModifier {
    associatedtype AriaPosInSetAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaPosInSetAttributeModifier where Self: Attributes & Mutable {

    public func ariaPosInSet(
        _ value: AriaPosInSetAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.posInSet,
            value: value?.attributeValue
        )
    }
}
