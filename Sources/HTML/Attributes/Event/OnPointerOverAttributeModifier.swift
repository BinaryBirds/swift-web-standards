//
//  OnPointerOverAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnPointerOverAttributeModifier {
    associatedtype
        OnPointerOverAttributeValueType: AttributeValueRepresentable = String
}

extension OnPointerOverAttributeModifier where Self: Attributes & Mutable {

    public func onPointerOver(
        _ value: OnPointerOverAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pointerOver,
            value: value?.attributeValue
        )
    }
}
