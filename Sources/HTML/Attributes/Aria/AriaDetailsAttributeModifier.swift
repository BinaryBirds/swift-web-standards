//
//  AriaDetailsAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaDetailsAttributeModifier {
    associatedtype AriaDetailsAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaDetailsAttributeModifier where Self: Attributes & Mutable {

    public func ariaDetails(
        _ value: AriaDetailsAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.details,
            value: value?.attributeValue
        )
    }
}
