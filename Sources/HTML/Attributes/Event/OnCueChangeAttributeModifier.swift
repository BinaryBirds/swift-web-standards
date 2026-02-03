//
//  OnCueChangeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnCueChangeAttributeModifier {
    associatedtype OnCueChangeAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnCueChangeAttributeModifier where Self: Attributes & Mutable {

    public func onCueChange(
        _ value: OnCueChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.cueChange,
            value: value?.attributeValue
        )
    }
}
