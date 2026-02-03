//
//  AriaFlowToAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaFlowToAttributeModifier {
    associatedtype AriaFlowToAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaFlowToAttributeModifier where Self: Attributes & Mutable {

    public func ariaFlowTo(
        _ value: AriaFlowToAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.flowTo, value: value?.attributeValue)
    }
}
