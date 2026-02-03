//
//  OnRateChangeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnRateChangeAttributeModifier {
    associatedtype OnRateChangeAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnRateChangeAttributeModifier where Self: Attributes & Mutable {

    public func onRateChange(
        _ value: OnRateChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.rateChange,
            value: value?.attributeValue
        )
    }
}
