//
//  OnSelectAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnSelectAttributeModifier {
    associatedtype OnSelectAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnSelectAttributeModifier where Self: Attributes & Mutable {

    public func onSelect(
        _ value: OnSelectAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.select,
            value: value?.attributeValue
        )
    }
}
