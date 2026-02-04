//
//  AllowAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AllowAttributeModifier {
    associatedtype AllowAttributeValueType: AttributeValueRepresentable = String
}

extension AllowAttributeModifier where Self: Attributes & Mutable {

    public func allow(
        _ value: AllowAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.allow,
            value: value?.attributeValue
        )
    }
}
