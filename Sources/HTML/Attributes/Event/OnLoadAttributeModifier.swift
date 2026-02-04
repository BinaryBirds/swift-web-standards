//
//  OnLoadAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnLoadAttributeModifier {
    associatedtype OnLoadAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnLoadAttributeModifier where Self: Attributes & Mutable {

    public func onLoad(
        _ value: OnLoadAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.load, value: value?.attributeValue)
    }
}
