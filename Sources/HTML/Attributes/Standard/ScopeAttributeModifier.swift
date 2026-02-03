//
//  ScopeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public enum ScopeAttributeValue: String, AttributeValueRepresentable {
    /// Specifies that the cell is a header for a column.
    case col
    /// Specifies that the cell is a header for a row.
    case row
    /// Specifies that the cell is a header for a group of columns.
    case colgroup
    /// Specifies that the cell is a header for a group of rows.
    case rowgroup
}

public protocol ScopeAttributeModifier {
    associatedtype ScopeAttributeValueType: AttributeValueRepresentable =
        ScopeAttributeValue
}

extension ScopeAttributeModifier where Self: Attributes & Mutable {

    public func scope(
        _ value: ScopeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.scope,
            value: value?.attributeValue
        )
    }
}
