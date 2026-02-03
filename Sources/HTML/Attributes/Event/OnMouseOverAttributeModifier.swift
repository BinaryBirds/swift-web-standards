//
//  OnMouseOverAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnMouseOverAttributeModifier {
    associatedtype OnMouseOverAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMouseOverAttributeModifier where Self: Attributes & Mutable {

    public func onMouseOver(
        _ value: OnMouseOverAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.mouseOver,
            value: value?.attributeValue
        )
    }
}
