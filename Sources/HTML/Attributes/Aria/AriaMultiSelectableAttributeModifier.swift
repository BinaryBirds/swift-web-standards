//
//  AriaMultiSelectableAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaMultiSelectableAttributeModifier {
    associatedtype
        AriaMultiSelectableAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaMultiSelectableAttributeModifier
where Self: Attributes & Mutable {

    public func ariaMultiSelectable(
        _ value: AriaMultiSelectableAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.multiSelectable,
            value: value?.attributeValue
        )
    }
}
