//
//  AriaControlsAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaControlsAttributeModifier {
    associatedtype AriaControlsAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaControlsAttributeModifier where Self: Attributes & Mutable {

    public func ariaControls(
        _ value: AriaControlsAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.controls,
            value: value?.attributeValue
        )
    }
}
