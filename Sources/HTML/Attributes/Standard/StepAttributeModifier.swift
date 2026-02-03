//
//  StepAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol StepAttributeModifier {
    associatedtype StepAttributeValueType: AttributeValueRepresentable = Int
}

extension StepAttributeModifier where Self: Attributes & Mutable {

    public func step(

        _ value: StepAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.step,
            value: value?.attributeValue
        )
    }
}
