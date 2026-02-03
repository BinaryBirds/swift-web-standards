//
//  ShortTag.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import DOM

/// A tag that renders as a void element.
public protocol ShortTag: Tag, Attributes {

}

extension ShortTag {

    /// The node.
    public var node: Node {
        ShortNode(
            name: Self.name,
            properties: attributes.properties
        )
    }
}
