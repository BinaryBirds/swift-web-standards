//
//  LabelAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol LabelAttributeModifier {
    associatedtype LabelAttributeValueType: AttributeValueRepresentable = String
}

extension LabelAttributeModifier where Self: Attributes & Mutable {

    public func label(
        _ value: LabelAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.label,
            value: value?.attributeValue
        )
    }
}
