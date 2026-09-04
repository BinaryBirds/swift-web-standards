//
//  GlobalStyleComponent.swift
//  swift-web-standards
//
//  Created by Tibor Bödecs on 2026. 03. 01.
//

import CSS
import DOM
import HTML
import SGML
import Utils

public protocol GlobalStyleComponent {

    @Builder<any CSS.Rule>
    static func rules() -> [any CSS.Rule]

    @Builder<any CSS.Selector>
    static func selectors() -> [any CSS.Selector]

}

extension GlobalStyleComponent {

    public static func rules() -> [any CSS.Rule] {
        let selectors = Self.selectors()
        guard !selectors.isEmpty else {
            return []
        }
        return [
            Media(selectors: selectors)
        ]
    }

    public static func selectors() -> [any CSS.Selector] {
        []
    }
}
