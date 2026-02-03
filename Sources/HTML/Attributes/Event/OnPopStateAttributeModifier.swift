//
//  OnPopStateAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnPopStateAttributeModifier {
    associatedtype OnPopStateAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPopStateAttributeModifier where Self: Attributes & Mutable {

    public func onPopState(
        _ value: OnPopStateAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.popState,
            value: value?.attributeValue
        )
    }
}
