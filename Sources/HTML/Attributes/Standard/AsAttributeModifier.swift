//
//  AsAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AsAttributeModifier {
    associatedtype AsAttributeValueType: AttributeValueRepresentable = String
}

extension AsAttributeModifier where Self: Attributes & Mutable {

    public func `as`(
        _ value: AsAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.`as`,
            value: value?.attributeValue
        )
    }
}
