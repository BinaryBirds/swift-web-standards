//
//  ColSpanAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ColSpanAttributeModifier {
    associatedtype ColSpanAttributeValueType: AttributeValueRepresentable = Int
}

extension ColSpanAttributeModifier where Self: Attributes & Mutable {

    public func colSpan(
        _ value: ColSpanAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.colspan,
            value: value?.attributeValue
        )
    }
}
