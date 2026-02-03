//
//  MinLengthAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol MinLengthAttributeModifier {
    associatedtype MinLengthAttributeValueType: AttributeValueRepresentable =
        Int
}

extension MinLengthAttributeModifier where Self: Attributes & Mutable {

    public func minLength(
        _ value: MinLengthAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.minlength,
            value: value?.attributeValue
        )
    }
}
