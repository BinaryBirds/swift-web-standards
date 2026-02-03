//
//  OnPointerLeaveAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnPointerLeaveAttributeModifier {
    associatedtype
        OnPointerLeaveAttributeValueType: AttributeValueRepresentable = String
}

extension OnPointerLeaveAttributeModifier where Self: Attributes & Mutable {

    public func onPointerLeave(
        _ value: OnPointerLeaveAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pointerLeave,
            value: value?.attributeValue
        )
    }
}
