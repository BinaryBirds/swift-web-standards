//
//  IsMapAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol IsMapAttributeModifier {
    associatedtype IsMapAttributeValueType: AttributeValueRepresentable = String
}

extension IsMapAttributeModifier where Self: Attributes & Mutable {

    public func isMap(

        _ value: IsMapAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.ismap,
            value: value?.attributeValue
        )
    }
}
