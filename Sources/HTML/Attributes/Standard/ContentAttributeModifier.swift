//
//  ContentAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ContentAttributeModifier {
    associatedtype ContentAttributeValueType: AttributeValueRepresentable =
        String
}

extension ContentAttributeModifier where Self: Attributes & Mutable {

    public func content(
        _ value: ContentAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.content,
            value: value?.attributeValue
        )
    }
}
