//
//  LoadingAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public enum LoadingAttributeValue: String, AttributeValueRepresentable {
    case eager
    case lazy
}

public protocol LoadingAttributeModifier {
    associatedtype LoadingAttributeValueType: AttributeValueRepresentable =
        LoadingAttributeValue
}

extension LoadingAttributeModifier where Self: Attributes & Mutable {

    public func loading(
        _ value: LoadingAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.loading,
            value: value?.attributeValue
        )
    }
}
