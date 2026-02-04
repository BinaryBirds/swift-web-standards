//
//  WidthAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol WidthAttributeModifier {
    associatedtype WidthAttributeValueType: AttributeValueRepresentable = Int
}

extension WidthAttributeModifier where Self: Attributes & Mutable {

    public func width(
        _ value: WidthAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.width,
            value: value?.attributeValue
        )
    }

    public func width() -> Int? {
        getAttribute(key: StandardAttributeKey.width)
    }
}
