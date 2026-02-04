//
//  OnDragAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnDragAttributeModifier {
    associatedtype OnDragAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnDragAttributeModifier where Self: Attributes & Mutable {

    public func onDrag(
        _ value: OnDragAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.drag, value: value?.attributeValue)
    }
}
