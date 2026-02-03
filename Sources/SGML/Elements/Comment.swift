//
//  Comment.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import DOM

/// A comment node element.
public struct Comment: Element {

    /// The comment text.
    public var value: String

    /// Creates a comment.
    public init(_ value: String) {
        self.value = value
    }

    /// The node.
    public var node: Node {
        CommentNode(value: value)
    }
}
