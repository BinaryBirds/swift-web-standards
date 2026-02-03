//
//  OnPointerCancelAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnPointerCancelAttributeModifier {
    associatedtype
        OnPointerCancelAttributeValueType: AttributeValueRepresentable = String
}

extension OnPointerCancelAttributeModifier where Self: Attributes & Mutable {

    public func onPointerCancel(
        _ value: OnPointerCancelAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pointerCancel,
            value: value?.attributeValue
        )
    }
}
