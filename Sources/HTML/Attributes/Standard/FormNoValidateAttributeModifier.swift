//
//  FormNoValidateAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol FormNoValidateAttributeModifier {
    associatedtype
        FormNoValidateAttributeValueType: AttributeValueRepresentable = String
}

extension FormNoValidateAttributeModifier where Self: Attributes & Mutable {

    public func formNoValidate(
        _ value: FormNoValidateAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.formnovalidate,
            value: value?.attributeValue
        )
    }
}
