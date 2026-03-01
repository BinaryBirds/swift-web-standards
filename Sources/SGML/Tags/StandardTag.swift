//
//  StandardTag.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import DOM

/// A tag that renders as a standard element with children.
public protocol StandardTag: BasicTag, Container {

}

extension StandardTag {

    /// The node.
    public var node: Node {
        StandardNode(
            name: Self.name,
            properties: attributes.properties,
            children: children.map(\.node)
        )
    }
}
