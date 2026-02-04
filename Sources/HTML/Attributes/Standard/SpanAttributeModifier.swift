//
//  SpanAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol SpanAttributeModifier {
    associatedtype SpanAttributeValueType: AttributeValueRepresentable = Int
}

extension SpanAttributeModifier where Self: Attributes & Mutable {

    public func span(
        _ value: SpanAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.span,
            value: value?.attributeValue
        )
    }
}
