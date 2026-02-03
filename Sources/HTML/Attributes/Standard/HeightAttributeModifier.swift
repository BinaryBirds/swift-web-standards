//
//  HeightAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol HeightAttributeModifier {
    associatedtype HeightAttributeValueType: AttributeValueRepresentable = Int
}

extension HeightAttributeModifier where Self: Attributes & Mutable {

    public func height(
        _ value: HeightAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.height,
            value: value?.attributeValue
        )
    }
}
