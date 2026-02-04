//
//  AriaMultiLineAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaMultiLineAttributeModifier {
    associatedtype
        AriaMultiLineAttributeValueType: AttributeValueRepresentable = String
}

extension AriaMultiLineAttributeModifier where Self: Attributes & Mutable {

    public func ariaMultiLine(
        _ value: AriaMultiLineAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.multiLine,
            value: value?.attributeValue
        )
    }
}
