//
//  AutoFocusAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// Provides access to the HTML `autofocus` global attribute.
public protocol AutoFocusAttributeModifier {

}

extension AutoFocusAttributeModifier where Self: Attributes & Mutable {

    /// Sets the HTML `autofocus` boolean attribute.
    /// - Returns: A modified copy of the element with `autofocus` set.
    public func autoFocus() -> Self {
        setAttribute(key: GlobalAttributeKey.autofocus)
    }
}
