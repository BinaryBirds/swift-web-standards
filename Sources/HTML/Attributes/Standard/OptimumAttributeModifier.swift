//
//  OptimumAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OptimumAttributeModifier {
    associatedtype OptimumAttributeValueType: AttributeValueRepresentable =
        Double
}

extension OptimumAttributeModifier where Self: Attributes & Mutable {

    public func optimum(

        _ value: OptimumAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.optimum,
            value: value?.attributeValue
        )
    }
}
