//
//  AcceptAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AcceptAttributeModifier {
    associatedtype AcceptAttributeValueType: AttributeValueRepresentable =
        String
}

extension AcceptAttributeModifier where Self: Attributes & Mutable {

    public func accept(

        _ value: AcceptAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.accept,
            value: value?.attributeValue
        )
    }
}
