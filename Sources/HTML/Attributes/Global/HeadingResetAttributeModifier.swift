//
//  HeadingResetAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Provides access to the HTML `headingreset` global attribute.
public protocol HeadingResetAttributeModifier {
    associatedtype HeadingResetAttributeValueType: AttributeValueRepresentable =
        Int
}

extension HeadingResetAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `headingreset` global attribute.
    /// - Parameter value: The attribute value. Pass `nil` to remove the attribute.
    /// - Returns: A modified copy of the element with the updated attribute.
    public func headingReset(
        _ value: HeadingResetAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.headingreset,
            value: value?.attributeValue
        )
    }
}
