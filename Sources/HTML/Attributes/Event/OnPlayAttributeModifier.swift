//
//  OnPlayAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnPlayAttributeModifier {
    associatedtype OnPlayAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPlayAttributeModifier where Self: Attributes & Mutable {

    public func onPlay(
        _ value: OnPlayAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.play, value: value?.attributeValue)
    }
}
