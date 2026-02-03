//
//  SizeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol SizeAttributeModifier {
    associatedtype SizeAttributeValueType: AttributeValueRepresentable = Int
}

extension SizeAttributeModifier where Self: Attributes & Mutable {

    public func size(
        _ value: SizeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.size,
            value: value?.attributeValue
        )
    }
}
