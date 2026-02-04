//
//  OnWaitingAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnWaitingAttributeModifier {
    associatedtype OnWaitingAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnWaitingAttributeModifier where Self: Attributes & Mutable {

    public func onWaiting(
        _ value: OnWaitingAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.waiting,
            value: value?.attributeValue
        )
    }
}
