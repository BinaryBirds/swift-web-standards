//
//  HeadersAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol HeadersAttributeModifier {
    associatedtype HeadersAttributeValueType: AttributeValueRepresentable =
        String
}

extension HeadersAttributeModifier where Self: Attributes & Mutable {

    public func headers(

        _ value: HeadersAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.headers,
            value: value?.attributeValue
        )
    }
}
