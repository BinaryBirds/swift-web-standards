//
//  OnSuspendAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnSuspendAttributeModifier {
    associatedtype OnSuspendAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnSuspendAttributeModifier where Self: Attributes & Mutable {

    public func onSuspend(
        _ value: OnSuspendAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.suspend,
            value: value?.attributeValue
        )
    }
}
