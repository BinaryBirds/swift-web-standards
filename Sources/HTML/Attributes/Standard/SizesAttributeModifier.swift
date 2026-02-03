//
//  SizesAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol SizesAttributeModifier {
    associatedtype SizesAttributeValueType: AttributeValueRepresentable = String
}

extension SizesAttributeModifier where Self: Attributes & Mutable {

    public func sizes(
        _ value: SizesAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.sizes,
            value: value?.attributeValue
        )
    }
}
