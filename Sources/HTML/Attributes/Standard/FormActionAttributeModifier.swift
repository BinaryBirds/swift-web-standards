//
//  FormActionAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol FormActionAttributeModifier {
    associatedtype FormActionAttributeValueType: AttributeValueRepresentable =
        String
}

extension FormActionAttributeModifier where Self: Attributes & Mutable {

    public func formAction(
        _ value: FormActionAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.formaction,
            value: value?.attributeValue
        )
    }
}
