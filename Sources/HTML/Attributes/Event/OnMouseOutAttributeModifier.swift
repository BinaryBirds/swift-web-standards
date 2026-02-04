//
//  OnMouseOutAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnMouseOutAttributeModifier {
    associatedtype OnMouseOutAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMouseOutAttributeModifier where Self: Attributes & Mutable {

    public func onMouseOut(
        _ value: OnMouseOutAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.mouseOut,
            value: value?.attributeValue
        )
    }
}
