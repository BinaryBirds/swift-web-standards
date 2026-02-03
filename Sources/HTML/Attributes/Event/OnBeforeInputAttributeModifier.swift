//
//  OnBeforeInputAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnBeforeInputAttributeModifier {
    associatedtype
        OnBeforeInputAttributeValueType: AttributeValueRepresentable = String
}

extension OnBeforeInputAttributeModifier where Self: Attributes & Mutable {

    public func onBeforeInput(
        _ value: OnBeforeInputAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.beforeInput,
            value: value?.attributeValue
        )
    }
}
