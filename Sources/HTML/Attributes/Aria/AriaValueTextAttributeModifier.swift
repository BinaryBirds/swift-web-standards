//
//  AriaValueTextAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaValueTextAttributeModifier {
    associatedtype
        AriaValueTextAttributeValueType: AttributeValueRepresentable = String
}

extension AriaValueTextAttributeModifier where Self: Attributes & Mutable {

    public func ariaValueText(
        _ value: AriaValueTextAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.valueText,
            value: value?.attributeValue
        )
    }
}
