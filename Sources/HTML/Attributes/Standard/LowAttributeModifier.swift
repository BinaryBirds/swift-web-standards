//
//  LowAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol LowAttributeModifier {
    associatedtype LowAttributeValueType: AttributeValueRepresentable = Double
}

extension LowAttributeModifier where Self: Attributes & Mutable {

    public func low(

        _ value: LowAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.low,
            value: value?.attributeValue
        )
    }
}
