//
//  OnPlayingAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnPlayingAttributeModifier {
    associatedtype OnPlayingAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPlayingAttributeModifier where Self: Attributes & Mutable {

    public func onPlaying(
        _ value: OnPlayingAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.playing,
            value: value?.attributeValue
        )
    }
}
