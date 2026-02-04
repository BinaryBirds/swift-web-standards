//
//  ColorAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ColorAttributeModifier {
    associatedtype ColorAttributeValueType: AttributeValueRepresentable = String
}

extension ColorAttributeModifier where Self: Attributes & Mutable {

    public func color(
        _ value: ColorAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.color,
            value: value?.attributeValue
        )
    }
}
