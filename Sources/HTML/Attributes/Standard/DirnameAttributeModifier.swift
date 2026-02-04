//
//  DirnameAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol DirnameAttributeModifier {
    associatedtype DirnameAttributeValueType: AttributeValueRepresentable =
        String
}

extension DirnameAttributeModifier where Self: Attributes & Mutable {

    public func dirname(
        _ value: DirnameAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.dirname,
            value: value?.attributeValue
        )
    }
}
