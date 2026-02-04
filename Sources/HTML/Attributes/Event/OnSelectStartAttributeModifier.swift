//
//  OnSelectStartAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnSelectStartAttributeModifier {
    associatedtype
        OnSelectStartAttributeValueType: AttributeValueRepresentable = String
}

extension OnSelectStartAttributeModifier where Self: Attributes & Mutable {

    public func onSelectStart(
        _ value: OnSelectStartAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.selectStart,
            value: value?.attributeValue
        )
    }
}
