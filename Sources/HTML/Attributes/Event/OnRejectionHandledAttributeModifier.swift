//
//  OnRejectionHandledAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnRejectionHandledAttributeModifier {
    associatedtype
        OnRejectionHandledAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnRejectionHandledAttributeModifier where Self: Attributes & Mutable {

    public func onRejectionHandled(
        _ value: OnRejectionHandledAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.rejectionHandled,
            value: value?.attributeValue
        )
    }
}
