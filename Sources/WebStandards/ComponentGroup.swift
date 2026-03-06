//
//  File.swift
//  swift-web-standards
//
//  Created by Tibor Bödecs on 2026. 03. 06..
//

import SGML
import DOM

public struct ComponentGroup: BasicTag, Container {

    public static var name: String {
        fatalError("ComponentGroup should not be rendered.")
    }

    public var attributes: AttributeStore = .init()
    public var children: [any Element]

    init(
        _ items: [any Element]
    ) {
        self.children = items
    }

    public var node: any Node {
        if children.count == 1, let first = children.first {
            return first.node
        }
        return ListNode(items: children.map(\.node))
    }
}
