//
//  OnTimeUpdateAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnTimeUpdateAttributeModifier {
    associatedtype OnTimeUpdateAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnTimeUpdateAttributeModifier where Self: Attributes & Mutable {

    public func onTimeUpdate(
        _ value: OnTimeUpdateAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.timeUpdate,
            value: value?.attributeValue
        )
    }
}
