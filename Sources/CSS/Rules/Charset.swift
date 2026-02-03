//
//  Charset.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

/// Specifies the character encoding to use.
public struct Charset: Rule {
    /// The charset name (e.g. `UTF-8`).
    var name: String

    /// Creates a charset rule.
    /// - Parameter name: The charset name.
    public init(_ name: String) {
        self.name = name
    }
}
