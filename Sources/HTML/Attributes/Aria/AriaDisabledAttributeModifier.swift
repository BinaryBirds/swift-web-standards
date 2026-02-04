//
//  AriaDisabledAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaDisabledAttributeModifier {
    associatedtype AriaDisabledAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaDisabledAttributeModifier where Self: Attributes & Mutable {

    public func ariaDisabled(
        _ value: AriaDisabledAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.disabled,
            value: value?.attributeValue
        )
    }
}
