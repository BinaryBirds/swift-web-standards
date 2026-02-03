//
//  RowsAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol RowsAttributeModifier {
    associatedtype RowsAttributeValueType: AttributeValueRepresentable = Int
}

extension RowsAttributeModifier where Self: Attributes & Mutable {

    public func rows(

        _ value: RowsAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.rows,
            value: value?.attributeValue
        )
    }
}
