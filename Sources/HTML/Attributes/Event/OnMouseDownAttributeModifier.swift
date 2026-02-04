//
//  OnMouseDownAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnMouseDownAttributeModifier {
    associatedtype OnMouseDownAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMouseDownAttributeModifier where Self: Attributes & Mutable {

    public func onMouseDown(
        _ value: OnMouseDownAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.mouseDown,
            value: value?.attributeValue
        )
    }
}
