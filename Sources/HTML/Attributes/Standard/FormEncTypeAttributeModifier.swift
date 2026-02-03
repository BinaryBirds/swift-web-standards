//
//  FormEncTypeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol FormEncTypeAttributeModifier {
    associatedtype FormEncTypeAttributeValueType: AttributeValueRepresentable =
        EncTypeAttributeValue
}

extension FormEncTypeAttributeModifier where Self: Attributes & Mutable {

    public func formEncType(
        _ value: FormEncTypeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.formenctype,
            value: value?.attributeValue
        )
    }
}
