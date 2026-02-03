//
//  OnDragEnterAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnDragEnterAttributeModifier {
    associatedtype OnDragEnterAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnDragEnterAttributeModifier where Self: Attributes & Mutable {

    public func onDragEnter(
        _ value: OnDragEnterAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.dragEnter,
            value: value?.attributeValue
        )
    }
}
