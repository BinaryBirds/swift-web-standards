//
//  OnResetAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnResetAttributeModifier {
    associatedtype OnResetAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnResetAttributeModifier where Self: Attributes & Mutable {

    public func onReset(
        _ value: OnResetAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.reset, value: value?.attributeValue)
    }
}
