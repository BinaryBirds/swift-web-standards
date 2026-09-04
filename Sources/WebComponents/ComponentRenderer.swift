//
//  ComponentRenderer.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import SGML

/// Converts a component tree into an HTML tree.
public struct ComponentRenderer: Sendable {

    public init() {}

    public func render<T: Renderable>(
        _ component: T
    ) -> T.RenderedHTML {
        component.renderHTML(renderer: self)
    }

    public func render(
        _ component: any Component
    ) -> (any SGML.Element)? {
        if let leaf = component as? any Leaf {
            return leaf.renderHTML()
        }

        if let container = component as? any Branch {
            return container.renderHTML(renderer: self)
        }

        return nil
    }
}
