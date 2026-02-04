//
//  OnBeforeUnloadAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnBeforeUnloadAttributeModifier {
    associatedtype
        OnBeforeUnloadAttributeValueType: AttributeValueRepresentable = String
}

extension OnBeforeUnloadAttributeModifier where Self: Attributes & Mutable {

    public func onBeforeUnload(
        _ value: OnBeforeUnloadAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.beforeUnload,
            value: value?.attributeValue
        )
    }
}
