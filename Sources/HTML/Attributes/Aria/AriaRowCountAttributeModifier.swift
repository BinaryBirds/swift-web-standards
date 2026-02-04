//
//  AriaRowCountAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaRowCountAttributeModifier {
    associatedtype AriaRowCountAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaRowCountAttributeModifier where Self: Attributes & Mutable {

    public func ariaRowCount(
        _ value: AriaRowCountAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.rowCount,
            value: value?.attributeValue
        )
    }
}
