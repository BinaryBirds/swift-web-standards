//
//  ListNode.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

/// A container node that renders its children without adding markup.
public struct ListNode: Node {

    /// Child nodes in order.
    public var items: [Node]

    /// Creates a list node with the provided child nodes.
    public init(
        items: [Node]
    ) {
        self.items = items
    }
}
