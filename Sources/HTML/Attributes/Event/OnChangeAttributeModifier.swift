//
//  OnChangeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnChangeAttributeModifier {
    associatedtype OnChangeAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnChangeAttributeModifier where Self: Attributes & Mutable {

    public func onChange(
        _ value: OnChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.change,
            value: value?.attributeValue
        )
    }
}
