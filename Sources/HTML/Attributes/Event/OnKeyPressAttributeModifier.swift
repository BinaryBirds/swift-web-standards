//
//  OnKeyPressAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnKeyPressAttributeModifier {
    associatedtype OnKeyPressAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnKeyPressAttributeModifier where Self: Attributes & Mutable {

    public func onKeyPress(
        _ value: OnKeyPressAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.keyPress,
            value: value?.attributeValue
        )
    }
}
