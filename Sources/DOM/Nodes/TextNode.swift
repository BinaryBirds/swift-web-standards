//
//  TextNode.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

/// A plain text node.
public struct TextNode: Node {

    /// Raw text value.
    public var value: String
    /// When `true`, skips indentation in indented rendering.
    public var ignoreRenderIndentation: Bool

    /// Creates a text node with optional indentation control.
    public init(
        value: String,
        ignoreRenderIndentation: Bool = false
    ) {
        self.value = value
        self.ignoreRenderIndentation = ignoreRenderIndentation
    }
}
