//
//  PlaceholderAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol PlaceholderAttributeModifier {
    associatedtype PlaceholderAttributeValueType: AttributeValueRepresentable =
        String
}

extension PlaceholderAttributeModifier where Self: Attributes & Mutable {

    public func placeholder(
        _ value: PlaceholderAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.placeholder,
            value: value?.attributeValue
        )
    }
}
