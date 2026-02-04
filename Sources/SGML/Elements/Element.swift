//
//  Element.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import DOM

/// A renderable SGML element.
public protocol Element: Sendable {
    /// The DOM node representation of the element.
    var node: Node { get }
}
