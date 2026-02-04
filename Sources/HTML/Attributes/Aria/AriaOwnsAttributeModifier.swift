//
//  AriaOwnsAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaOwnsAttributeModifier {
    associatedtype AriaOwnsAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaOwnsAttributeModifier where Self: Attributes & Mutable {

    public func ariaOwns(
        _ value: AriaOwnsAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.owns, value: value?.attributeValue)
    }
}
