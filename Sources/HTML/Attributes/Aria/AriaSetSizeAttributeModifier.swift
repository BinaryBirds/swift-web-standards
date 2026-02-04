//
//  AriaSetSizeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaSetSizeAttributeModifier {
    associatedtype AriaSetSizeAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaSetSizeAttributeModifier where Self: Attributes & Mutable {

    public func ariaSetSize(
        _ value: AriaSetSizeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.setSize,
            value: value?.attributeValue
        )
    }
}
