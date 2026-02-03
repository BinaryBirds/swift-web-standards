//
//  EncTypeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public enum EncTypeAttributeValue: String, AttributeValueRepresentable {
    case urlencoded = "application/x-www-form-urlencoded"
    case multipart = "multipart/form-data"
    case plain = "text/plain"
}

public protocol EncTypeAttributeModifier {
    associatedtype EncTypeAttributeValueType: AttributeValueRepresentable =
        EncTypeAttributeValue
}

extension EncTypeAttributeModifier where Self: Attributes & Mutable {

    public func encType(
        _ value: EncTypeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.enctype,
            value: value?.attributeValue
        )
    }
}
