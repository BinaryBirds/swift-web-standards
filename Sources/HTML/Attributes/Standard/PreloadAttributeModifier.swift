//
//  PreloadAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public enum PreloadAttributeValue: String, AttributeValueRepresentable {
    case auto
    case metadata
    case none
}

public protocol PreloadAttributeModifier {
    associatedtype PreloadAttributeValueType: AttributeValueRepresentable =
        PreloadAttributeValue
}

extension PreloadAttributeModifier where Self: Attributes & Mutable {

    public func preload(
        _ value: PreloadAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.preload,
            value: value?.attributeValue
        )
    }
}
