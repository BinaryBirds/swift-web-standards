//
//  ForAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ForAttributeModifier {
    associatedtype ForAttributeValueType: AttributeValueRepresentable = String
}

extension ForAttributeModifier where Self: Attributes & Mutable {

    public func `for`(
        _ value: ForAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.`for`,
            value: value?.attributeValue
        )
    }
}
