//
//  OnWheelAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnWheelAttributeModifier {
    associatedtype OnWheelAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnWheelAttributeModifier where Self: Attributes & Mutable {

    public func onWheel(
        _ value: OnWheelAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.wheel, value: value?.attributeValue)
    }
}
