//
//  OnSeekingAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnSeekingAttributeModifier {
    associatedtype OnSeekingAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnSeekingAttributeModifier where Self: Attributes & Mutable {

    public func onSeeking(
        _ value: OnSeekingAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.seeking,
            value: value?.attributeValue
        )
    }
}
