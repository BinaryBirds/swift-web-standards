//
//  ColorspaceAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ColorspaceAttributeModifier {
    associatedtype ColorspaceAttributeValueType: AttributeValueRepresentable =
        String
}

extension ColorspaceAttributeModifier where Self: Attributes & Mutable {

    public func colorspace(
        _ value: ColorspaceAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.colorspace,
            value: value?.attributeValue
        )
    }
}
