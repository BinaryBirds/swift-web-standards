//
//  OnMouseMoveAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnMouseMoveAttributeModifier {
    associatedtype OnMouseMoveAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMouseMoveAttributeModifier where Self: Attributes & Mutable {

    public func onMouseMove(
        _ value: OnMouseMoveAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.mouseMove,
            value: value?.attributeValue
        )
    }
}
