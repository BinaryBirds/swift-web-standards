//
//  AriaColIndexAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaColIndexAttributeModifier {
    associatedtype AriaColIndexAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaColIndexAttributeModifier where Self: Attributes & Mutable {

    public func ariaColIndex(
        _ value: AriaColIndexAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.colIndex,
            value: value?.attributeValue
        )
    }
}
