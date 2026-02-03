//
//  OnMouseEnterAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnMouseEnterAttributeModifier {
    associatedtype OnMouseEnterAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMouseEnterAttributeModifier where Self: Attributes & Mutable {

    public func onMouseEnter(
        _ value: OnMouseEnterAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.mouseEnter,
            value: value?.attributeValue
        )
    }
}
