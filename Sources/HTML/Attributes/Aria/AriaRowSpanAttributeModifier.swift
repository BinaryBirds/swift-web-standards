//
//  AriaRowSpanAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaRowSpanAttributeModifier {
    associatedtype AriaRowSpanAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaRowSpanAttributeModifier where Self: Attributes & Mutable {

    public func ariaRowSpan(
        _ value: AriaRowSpanAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.rowSpan,
            value: value?.attributeValue
        )
    }
}
