//
//  OnMouseUpAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnMouseUpAttributeModifier {
    associatedtype OnMouseUpAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMouseUpAttributeModifier where Self: Attributes & Mutable {

    public func onMouseUp(
        _ value: OnMouseUpAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.mouseUp,
            value: value?.attributeValue
        )
    }
}
