//
//  OnMouseLeaveAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnMouseLeaveAttributeModifier {
    associatedtype OnMouseLeaveAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMouseLeaveAttributeModifier where Self: Attributes & Mutable {

    public func onMouseLeave(
        _ value: OnMouseLeaveAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.mouseLeave,
            value: value?.attributeValue
        )
    }
}
