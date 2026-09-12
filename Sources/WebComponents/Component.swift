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

    associatedtype HTML: SGML.Element

    var identifier: String { get }

    func html(
        context: inout RenderContext
    ) -> HTML

    @Builder<any CSS.Rule>
    func rules() -> [any CSS.Rule]

    @Builder<any CSS.Selector>
    func selectors() -> [any CSS.Selector]

    @Builder<String>
    func scripts() -> [String]
}

/// Compatibility protocol for applications that still declare legacy leaf
/// components. New components should conform directly to `Component` and
/// implement `html(context:)`.
public protocol Leaf: Component where HTML: SGML.Element {
    func html() -> HTML
}

extension Leaf {
    public func html(context: inout RenderContext) -> HTML {
        html()
    }
}

extension Component {

    /// Legacy convenience retained while downstream applications migrate to
    /// context-based rendering.
    public func html() -> HTML {
        var context = RenderContext()
        return context.render(self)
    }

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
