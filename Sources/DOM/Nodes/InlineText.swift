//
//  InlineText.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

/// A plain inline text node.
public struct InlineText: Node, ExpressibleByStringLiteral {

    /// Raw text value.
    public var value: String
    /// When `true`, skips indentation in indented rendering.
    public var isRaw: Bool

    /// Creates inline text with optional indentation control.
    public init(
        _ value: String,
        isRaw: Bool = false
    ) {
        self.value = value
        self.isRaw = isRaw
    }

    /// Creates inline text from a string literal.
    public init(
        stringLiteral value: StringLiteralType
    ) {
        self.init(
            value,
            isRaw: false
        )
    }
}
