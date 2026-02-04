//
//  OnMessageAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnMessageAttributeModifier {
    associatedtype OnMessageAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMessageAttributeModifier where Self: Attributes & Mutable {

    public func onMessage(
        _ value: OnMessageAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.message,
            value: value?.attributeValue
        )
    }
}
