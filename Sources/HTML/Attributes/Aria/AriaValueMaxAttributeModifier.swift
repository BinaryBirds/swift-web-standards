//
//  AriaValueMaxAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaValueMaxAttributeModifier {
    associatedtype AriaValueMaxAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaValueMaxAttributeModifier where Self: Attributes & Mutable {

    public func ariaValueMax(
        _ value: AriaValueMaxAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.valueMax,
            value: value?.attributeValue
        )
    }
}
