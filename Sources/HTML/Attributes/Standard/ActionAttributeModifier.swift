//
//  ActionAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ActionAttributeModifier {
    associatedtype ActionAttributeValueType: AttributeValueRepresentable =
        String
}

extension ActionAttributeModifier where Self: Attributes & Mutable {

    public func action(
        _ value: ActionAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.action,
            value: value?.attributeValue
        )
    }
}
