//
//  OnUnloadAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnUnloadAttributeModifier {
    associatedtype OnUnloadAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnUnloadAttributeModifier where Self: Attributes & Mutable {

    public func onUnload(
        _ value: OnUnloadAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.unload,
            value: value?.attributeValue
        )
    }
}
