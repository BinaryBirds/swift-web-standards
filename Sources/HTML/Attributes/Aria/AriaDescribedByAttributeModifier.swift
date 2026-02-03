//
//  AriaDescribedByAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaDescribedByAttributeModifier {
    associatedtype
        AriaDescribedByAttributeValueType: AttributeValueRepresentable = String
}

extension AriaDescribedByAttributeModifier where Self: Attributes & Mutable {

    public func ariaDescribedBy(
        _ value: AriaDescribedByAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.describedBy,
            value: value?.attributeValue
        )
    }
}
