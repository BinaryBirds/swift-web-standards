//
//  AriaLabelAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaLabelAttributeModifier {
    associatedtype AriaLabelAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaLabelAttributeModifier where Self: Attributes & Mutable {

    public func ariaLabel(
        _ value: AriaLabelAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.label, value: value?.attributeValue)
    }
}
