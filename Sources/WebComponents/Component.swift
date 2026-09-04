//
//  Component.swift
//  swift-web-standards
//
//  Created by Tibor Bödecs on 2026. 03. 06.
//

import CSS
import SGML
import Utils

public protocol Component: Sendable {

    @Builder<any Component>
    var body: [any Component] { get }
    var identifier: String { get }

    @Builder<any CSS.Rule>
    func rules() -> [any CSS.Rule]

    @Builder<any CSS.Selector>
    func selectors() -> [any CSS.Selector]

    @Builder<String>
    func scripts() -> [String]
}

public protocol LeafComponent: Component {

    func renderHTML() -> any SGML.Element
}

public protocol ContainerComponent: Component {

    func renderHTML(
        children: [any SGML.Element]
    ) -> any SGML.Element
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

    public var body: [any Component] {
        []
    }

}
