//
//  AriaColSpanAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaColSpanAttributeModifier {
    associatedtype AriaColSpanAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaColSpanAttributeModifier where Self: Attributes & Mutable {

    public func ariaColSpan(
        _ value: AriaColSpanAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.colSpan,
            value: value?.attributeValue
        )
    }
}
