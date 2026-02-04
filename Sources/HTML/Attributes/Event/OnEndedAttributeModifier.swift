//
//  OnEndedAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnEndedAttributeModifier {
    associatedtype OnEndedAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnEndedAttributeModifier where Self: Attributes & Mutable {

    public func onEnded(
        _ value: OnEndedAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.ended, value: value?.attributeValue)
    }
}
