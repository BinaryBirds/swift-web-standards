//
//  HrefAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol HrefAttributeModifier {
    associatedtype HrefAttributeValueType: AttributeValueRepresentable = String
}

extension HrefAttributeModifier where Self: Attributes & Mutable {

    /// Sets a href attribute.
    public func href(
        _ value: HrefAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.href,
            value: value?.attributeValue
        )
    }
}
