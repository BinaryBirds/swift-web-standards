//
//  CiteAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol CiteAttributeModifier {
    associatedtype CiteAttributeValueType: AttributeValueRepresentable = String
}

extension CiteAttributeModifier where Self: Attributes & Mutable {

    /// Sets a cite attribute.
    public func cite(
        _ value: CiteAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.cite,
            value: value?.attributeValue
        )
    }
}
