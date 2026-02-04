//
//  IntegrityAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol IntegrityAttributeModifier {
    associatedtype IntegrityAttributeValueType: AttributeValueRepresentable =
        String
}

extension IntegrityAttributeModifier where Self: Attributes & Mutable {

    public func integrity(
        _ value: IntegrityAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.integrity,
            value: value?.attributeValue
        )
    }
}
