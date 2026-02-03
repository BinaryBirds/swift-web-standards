//
//  MethodAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public enum MethodAttributeValue: String, AttributeValueRepresentable {
    case get
    case post
}

public protocol MethodAttributeModifier {
    associatedtype MethodAttributeValueType: AttributeValueRepresentable =
        MethodAttributeValue
}

extension MethodAttributeModifier where Self: Attributes & Mutable {

    public func method(
        _ value: MethodAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.method,
            value: value?.attributeValue
        )
    }
}
