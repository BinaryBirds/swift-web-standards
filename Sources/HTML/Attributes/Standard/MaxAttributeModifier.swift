//
//  MaxAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol MaxAttributeModifier {
    associatedtype MaxAttributeValueType: AttributeValueRepresentable = Double
}

extension MaxAttributeModifier where Self: Attributes & Mutable {

    public func max(

        _ value: MaxAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.max,
            value: value?.attributeValue
        )
    }
}
