//
//  Attribute.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

/// A typed attribute with a name and optional value.
public protocol Attribute: Sendable {
    /// The tag name used for rendering.
    static var name: String { get }
    var value: String? { get }
}

extension Attribute {

    /// The name.
    public static var name: String {
        .init(describing: self).lowercased()
    }
}
