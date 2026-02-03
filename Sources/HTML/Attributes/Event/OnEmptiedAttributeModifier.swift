//
//  OnEmptiedAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnEmptiedAttributeModifier {
    associatedtype OnEmptiedAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnEmptiedAttributeModifier where Self: Attributes & Mutable {

    public func onEmptied(
        _ value: OnEmptiedAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.emptied,
            value: value?.attributeValue
        )
    }
}
