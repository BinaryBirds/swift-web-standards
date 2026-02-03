//
//  FormAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol FormAttributeModifier {
    associatedtype FormAttributeValueType: AttributeValueRepresentable = String
}

extension FormAttributeModifier where Self: Attributes & Mutable {

    /// Sets an Form attribute.
    public func form(
        _ value: FormAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.form,
            value: value?.attributeValue
        )
    }
}
