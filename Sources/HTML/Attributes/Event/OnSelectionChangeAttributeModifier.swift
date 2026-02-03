//
//  OnSelectionChangeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnSelectionChangeAttributeModifier {
    associatedtype
        OnSelectionChangeAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnSelectionChangeAttributeModifier where Self: Attributes & Mutable {

    public func onSelectionChange(
        _ value: OnSelectionChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.selectionChange,
            value: value?.attributeValue
        )
    }
}
