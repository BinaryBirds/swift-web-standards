//
//  ComponentRenderer.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import SGML

/// Converts a component tree into an HTML tree.
public struct ComponentRenderer: Sendable {

    public init() {}

    public func render<T: Leaf>(_ component: T) -> T.HTML {
        component.renderHTML()
    }

    public func render<T: Composite>(_ component: T) -> T.HTML {
        component.renderHTML(renderer: self)
    }

    public func render(
        _ component: any Component
    ) -> (any SGML.Element)? {
        if let leaf = component as? any Leaf {
            return leaf.renderHTML()
        }

        if let container = component as? any Composite {
            return container.renderHTML(renderer: self)
        }

        return nil
    }
}
