//
//  OnDblClickAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnDblClickAttributeModifier {
    associatedtype OnDblClickAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnDblClickAttributeModifier where Self: Attributes & Mutable {

    public func onDblClick(
        _ value: OnDblClickAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.dblClick,
            value: value?.attributeValue
        )
    }
}
