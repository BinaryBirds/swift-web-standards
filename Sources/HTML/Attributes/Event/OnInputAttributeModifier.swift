//
//  OnInputAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnInputAttributeModifier {
    associatedtype OnInputAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnInputAttributeModifier where Self: Attributes & Mutable {

    public func onInput(
        _ value: OnInputAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.input, value: value?.attributeValue)
    }
}
