//
//  RowSpanAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol RowSpanAttributeModifier {
    associatedtype RowSpanAttributeValueType: AttributeValueRepresentable = Int
}

extension RowSpanAttributeModifier where Self: Attributes & Mutable {

    public func rowSpan(
        _ value: RowSpanAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.rowspan,
            value: value?.attributeValue
        )
    }
}
