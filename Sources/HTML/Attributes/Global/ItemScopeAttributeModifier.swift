//
//  ItemScopeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Provides access to the HTML `itemscope` global attribute.
public protocol ItemScopeAttributeModifier {
}

extension ItemScopeAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `itemscope` boolean attribute.
    /// - Returns: A modified copy of the element with `itemscope` set.
    public func itemScope() -> Self {
        setAttribute(key: GlobalAttributeKey.itemscope)
    }
}
