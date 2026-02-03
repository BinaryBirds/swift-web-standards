//
//  OnDurationChangeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnDurationChangeAttributeModifier {
    associatedtype
        OnDurationChangeAttributeValueType: AttributeValueRepresentable = String
}

extension OnDurationChangeAttributeModifier where Self: Attributes & Mutable {

    public func onDurationChange(
        _ value: OnDurationChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.durationChange,
            value: value?.attributeValue
        )
    }
}
