//
//  AriaLabeledByAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaLabeledByAttributeModifier {
    associatedtype
        AriaLabeledByAttributeValueType: AttributeValueRepresentable = String
}

extension AriaLabeledByAttributeModifier where Self: Attributes & Mutable {

    public func ariaLabelledBy(
        _ value: AriaLabeledByAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.labelledBy,
            value: value?.attributeValue
        )
    }
}
