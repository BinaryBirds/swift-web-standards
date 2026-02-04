//
//  AriaValueNowAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaValueNowAttributeModifier {
    associatedtype AriaValueNowAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaValueNowAttributeModifier where Self: Attributes & Mutable {

    public func ariaValueNow(
        _ value: AriaValueNowAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.valueNow,
            value: value?.attributeValue
        )
    }
}
