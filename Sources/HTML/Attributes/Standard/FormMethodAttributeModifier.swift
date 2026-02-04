//
//  FormMethodAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol FormMethodAttributeModifier {
    associatedtype FormMethodAttributeValueType: AttributeValueRepresentable =
        MethodAttributeValue
}

extension FormMethodAttributeModifier where Self: Attributes & Mutable {

    public func formMethod(
        _ value: FormMethodAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.formmethod,
            value: value?.attributeValue
        )
    }
}
