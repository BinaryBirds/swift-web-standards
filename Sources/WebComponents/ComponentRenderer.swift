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
        let children = component.body.map { render($0) }
        return component.renderHTML(children: children)
    }
}
