//
//  OnPointerMoveAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnPointerMoveAttributeModifier {
    associatedtype
        OnPointerMoveAttributeValueType: AttributeValueRepresentable = String
}

extension OnPointerMoveAttributeModifier where Self: Attributes & Mutable {

    public func onPointerMove(
        _ value: OnPointerMoveAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pointerMove,
            value: value?.attributeValue
        )
    }
}
