//
//  ComponentGroup.swift
//  swift-web-standards
//
//  Created by Tibor Bödecs on 2026. 03. 06.
//

import SGML
import WebBuilders

public struct ComponentGroup: Sendable {

    public var children: [any Component]

    init(
        _ items: [any Component]
    ) {
        self.children = items
    }
}

extension Builder where Element == any Component {

    public static func buildExpression(
        _ expression: ComponentGroup
    ) -> [any Component] {
        expression.children
    }
}
