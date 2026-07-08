//
//  DataAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol DataAttributeModifier {
    associatedtype DataAttributeValueType: AttributeValueRepresentable = String
}

extension DataAttributeModifier where Self: Attributes & Mutable {

    public func data(
        _ value: DataAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.data,
            value: value?.attributeValue
        )
    }

    /// Sets a custom HTML `data-*` attribute.
    ///
    /// Pass `label` to create `data-label`; do not include the `data-` prefix.
    public func data(
        _ key: String,
        _ value: DataAttributeValueType?
    ) -> Self {
        setAttribute(
            name: "data-\(key)",
            value: value?.attributeValue
        )
    }
}
