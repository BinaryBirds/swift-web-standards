//
//  OnDragEndAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnDragEndAttributeModifier {
    associatedtype OnDragEndAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnDragEndAttributeModifier where Self: Attributes & Mutable {

    public func onDragEnd(
        _ value: OnDragEndAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.dragEnd,
            value: value?.attributeValue
        )
    }
}
