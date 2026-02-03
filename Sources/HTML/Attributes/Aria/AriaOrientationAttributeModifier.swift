//
//  AriaOrientationAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaOrientationAttributeModifier {
    associatedtype
        AriaOrientationAttributeValueType: AttributeValueRepresentable = String
}

extension AriaOrientationAttributeModifier where Self: Attributes & Mutable {

    public func ariaOrientation(
        _ value: AriaOrientationAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.orientation,
            value: value?.attributeValue
        )
    }
}
