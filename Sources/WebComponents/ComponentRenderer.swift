//
//  ComponentRenderer.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import SGML

/// Converts a component tree into an HTML tree.
public struct ComponentRenderer: Sendable {

    public init() {}

    public func render(
        _ component: any Component
    ) -> any SGML.Element {
        if let leaf = component as? any LeafComponent {
            return leaf.renderHTML()
        }

        guard let container = component as? any ContainerComponent else {
            preconditionFailure(
                "Component must conform to LeafComponent or ContainerComponent"
            )
        }

        let children = container.body.map { render($0) }
        return container.renderHTML(children: children)
    }
}
