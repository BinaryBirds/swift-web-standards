//
//  AriaColCountAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaColCountAttributeModifier {
    associatedtype AriaColCountAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaColCountAttributeModifier where Self: Attributes & Mutable {

    public func ariaColCount(
        _ value: AriaColCountAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.colCount,
            value: value?.attributeValue
        )
    }
}
