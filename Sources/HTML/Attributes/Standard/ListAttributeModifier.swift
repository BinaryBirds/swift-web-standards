//
//  ListAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ListAttributeModifier {
    associatedtype ListAttributeValueType: AttributeValueRepresentable = String
}

extension ListAttributeModifier where Self: Attributes & Mutable {

    public func list(

        _ value: ListAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.list,
            value: value?.attributeValue
        )
    }
}
