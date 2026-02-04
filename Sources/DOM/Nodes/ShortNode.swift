//
//  ShortNode.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

/// A node rendered as a single opening tag, typically for void elements.
public struct ShortNode: Node {

    /// Tag name.
    public var name: String
    /// Attributes applied to the tag.
    public var properties: [Property]

    /// Creates a short node with a tag name and optional attributes.
    public init(
        name: String,
        properties: [Property] = []
    ) {
        self.name = name
        self.properties = properties
    }
}
