//
//  AriaErrorMessageAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaErrorMessageAttributeModifier {
    associatedtype
        AriaErrorMessageAttributeValueType: AttributeValueRepresentable = String
}

extension AriaErrorMessageAttributeModifier where Self: Attributes & Mutable {

    public func ariaErrorMessage(
        _ value: AriaErrorMessageAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.errorMessage,
            value: value?.attributeValue
        )
    }
}
