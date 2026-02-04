//
//  AllowFullscreenAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AllowFullscreenAttributeModifier {
    associatedtype
        AllowFullscreenAttributeValueType: AttributeValueRepresentable = String
}

extension AllowFullscreenAttributeModifier where Self: Attributes & Mutable {

    public func allowFullscreen(
        _ value: AllowFullscreenAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.allowfullscreen,
            value: value?.attributeValue
        )
    }
}
