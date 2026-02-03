//
//  OnUnhandledRejectionAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnUnhandledRejectionAttributeModifier {
    associatedtype
        OnUnhandledRejectionAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnUnhandledRejectionAttributeModifier
where Self: Attributes & Mutable {

    public func onUnhandledRejection(
        _ value: OnUnhandledRejectionAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.unhandledRejection,
            value: value?.attributeValue
        )
    }
}
