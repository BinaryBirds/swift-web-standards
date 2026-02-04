//
//  AriaModalAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaModalAttributeModifier {
    associatedtype AriaModalAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaModalAttributeModifier where Self: Attributes & Mutable {

    public func ariaModal(
        _ value: AriaModalAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.modal, value: value?.attributeValue)
    }
}
