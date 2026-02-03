//
//  OnDragLeaveAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnDragLeaveAttributeModifier {
    associatedtype OnDragLeaveAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnDragLeaveAttributeModifier where Self: Attributes & Mutable {

    public func onDragLeave(
        _ value: OnDragLeaveAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.dragLeave,
            value: value?.attributeValue
        )
    }
}
