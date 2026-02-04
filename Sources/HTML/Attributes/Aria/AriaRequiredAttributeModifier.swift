//
//  AriaRequiredAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaRequiredAttributeModifier {
    associatedtype AriaRequiredAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaRequiredAttributeModifier where Self: Attributes & Mutable {

    public func ariaRequired(
        _ value: AriaRequiredAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.required,
            value: value?.attributeValue
        )
    }
}
