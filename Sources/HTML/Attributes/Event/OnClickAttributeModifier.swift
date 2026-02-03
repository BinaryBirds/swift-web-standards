//
//  OnClickAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnClickAttributeModifier {
    associatedtype OnClickAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnClickAttributeModifier where Self: Attributes & Mutable {

    public func onClick(
        _ value: OnClickAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.click, value: value?.attributeValue)
    }
}
