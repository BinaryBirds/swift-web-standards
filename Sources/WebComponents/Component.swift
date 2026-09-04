//
//  Component.swift
//  swift-web-standards
//
//  Created by Tibor Bödecs on 2026. 03. 06.
//

import CSS
import SGML
import WebBuilders

public protocol Component: Sendable {

    var identifier: String { get }

    @Builder<any CSS.Rule>
    func rules() -> [any CSS.Rule]

    @Builder<any CSS.Selector>
    func selectors() -> [any CSS.Selector]

    @Builder<String>
    func scripts() -> [String]
}

public protocol Renderable: Component {

    associatedtype RenderedHTML: SGML.Element

    func renderHTML(
        renderer: ComponentRenderer
    ) -> RenderedHTML
}

public protocol Leaf: Renderable where RenderedHTML == HTML {

    associatedtype HTML: SGML.Element

    func renderHTML() -> HTML
}

extension Leaf {

    public func renderHTML(
        renderer: ComponentRenderer
    ) -> HTML {
        renderHTML()
    }
}

public protocol Branch: Renderable where RenderedHTML == HTML {

    associatedtype HTML: SGML.Element

    @Builder<any Component>
    var children: [any Component] { get }
}

extension Component {

    public var identifier: String {
        String(describing: type(of: self))
    }

    public func rules() -> [any CSS.Rule] {
        let selectors = selectors()
        guard !selectors.isEmpty else {
            return []
        }
        return [Media(selectors: selectors)]
    }

    public func selectors() -> [any CSS.Selector] {
        []
    }

    public func scripts() -> [String] {
        []
    }

}
