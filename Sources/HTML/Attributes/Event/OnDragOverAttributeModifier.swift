//
//  OnDragOverAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnDragOverAttributeModifier {
    associatedtype OnDragOverAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnDragOverAttributeModifier where Self: Attributes & Mutable {

    public func onDragOver(
        _ value: OnDragOverAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.dragOver,
            value: value?.attributeValue
        )
    }
}
