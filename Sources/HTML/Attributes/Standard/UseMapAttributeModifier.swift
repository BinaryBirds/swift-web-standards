//
//  UseMapAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol UseMapAttributeModifier {
    associatedtype UseMapAttributeValueType: AttributeValueRepresentable =
        String
}

extension UseMapAttributeModifier where Self: Attributes & Mutable {

    public func useMap(
        _ value: UseMapAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.usemap,
            value: value?.attributeValue
        )
    }
}
