//
//  OnSeekedAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnSeekedAttributeModifier {
    associatedtype OnSeekedAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnSeekedAttributeModifier where Self: Attributes & Mutable {

    public func onSeeked(
        _ value: OnSeekedAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.seeked,
            value: value?.attributeValue
        )
    }
}
