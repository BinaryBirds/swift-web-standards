//
//  CharsetAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol CharsetAttributeModifier {
    associatedtype CharsetAttributeValueType: AttributeValueRepresentable =
        String
}

extension CharsetAttributeModifier where Self: Attributes & Mutable {

    public func charset(

        _ value: CharsetAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.charset,
            value: value?.attributeValue
        )
    }
}
