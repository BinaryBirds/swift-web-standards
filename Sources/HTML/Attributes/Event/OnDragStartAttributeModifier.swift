//
//  OnDragStartAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnDragStartAttributeModifier {
    associatedtype OnDragStartAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnDragStartAttributeModifier where Self: Attributes & Mutable {

    public func onDragStart(
        _ value: OnDragStartAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.dragStart,
            value: value?.attributeValue
        )
    }
}
