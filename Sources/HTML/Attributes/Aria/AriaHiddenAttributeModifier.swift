//
//  AriaHiddenAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaHiddenAttributeModifier {
    associatedtype AriaHiddenAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaHiddenAttributeModifier where Self: Attributes & Mutable {

    public func ariaHidden(
        _ value: AriaHiddenAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.hidden, value: value?.attributeValue)
    }
}
