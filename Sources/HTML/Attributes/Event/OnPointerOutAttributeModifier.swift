//
//  OnPointerOutAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnPointerOutAttributeModifier {
    associatedtype OnPointerOutAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPointerOutAttributeModifier where Self: Attributes & Mutable {

    public func onPointerOut(
        _ value: OnPointerOutAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pointerOut,
            value: value?.attributeValue
        )
    }
}
