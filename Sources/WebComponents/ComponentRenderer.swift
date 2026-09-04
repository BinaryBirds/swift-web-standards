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
    ) -> (any SGML.Element)? {
        renderComponents(component).first
    }

    private func renderComponents(
        _ component: any Component
    ) -> [any SGML.Element] {
        if let leaf = component as? any Leaf {
            return [leaf.renderHTML()]
        }

        if let container = component as? any Composite {
            let children = container.body.flatMap { renderComponents($0) }
            return [container.renderHTML(children: children)]
        }

        return []
    }
}
