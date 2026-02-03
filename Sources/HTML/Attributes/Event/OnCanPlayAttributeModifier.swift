//
//  OnCanPlayAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnCanPlayAttributeModifier {
    associatedtype OnCanPlayAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnCanPlayAttributeModifier where Self: Attributes & Mutable {

    public func onCanPlay(
        _ value: OnCanPlayAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.canPlay,
            value: value?.attributeValue
        )
    }
}
