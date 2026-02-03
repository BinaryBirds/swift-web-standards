//
//  AriaReadOnlyAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaReadOnlyAttributeModifier {
    associatedtype AriaReadOnlyAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaReadOnlyAttributeModifier where Self: Attributes & Mutable {

    public func ariaReadOnly(
        _ value: AriaReadOnlyAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.readOnly,
            value: value?.attributeValue
        )
    }
}
