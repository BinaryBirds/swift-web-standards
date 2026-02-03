//
//  MaxLengthAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol MaxLengthAttributeModifier {
    associatedtype MaxLengthAttributeValueType: AttributeValueRepresentable =
        Int
}

extension MaxLengthAttributeModifier where Self: Attributes & Mutable {

    public func maxLength(
        _ value: MaxLengthAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.maxlength,
            value: value?.attributeValue
        )
    }
}
