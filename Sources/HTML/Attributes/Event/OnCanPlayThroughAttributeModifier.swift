//
//  OnCanPlayThroughAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnCanPlayThroughAttributeModifier {
    associatedtype
        OnCanPlayThroughAttributeValueType: AttributeValueRepresentable = String
}

extension OnCanPlayThroughAttributeModifier where Self: Attributes & Mutable {

    public func onCanPlayThrough(
        _ value: OnCanPlayThroughAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.canPlayThrough,
            value: value?.attributeValue
        )
    }
}
