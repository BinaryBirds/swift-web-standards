//
//  OnKeyUpAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnKeyUpAttributeModifier {
    associatedtype OnKeyUpAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnKeyUpAttributeModifier where Self: Attributes & Mutable {

    public func onKeyUp(
        _ value: OnKeyUpAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.keyUp, value: value?.attributeValue)
    }
}
