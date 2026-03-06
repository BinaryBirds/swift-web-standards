//
//  File.swift
//  puppylepsy-web-app
//
//  Created by Tibor Bödecs on 2026. 03. 01..
//

import CSS
import DOM
import HTML
import SGML

public protocol GlobalStyleComponent {

    static var className: String { get }

    @CSS.Builder<CSS.Rule>
    static func rules() -> [any CSS.Rule]

    @CSS.Builder<CSS.Selector>
    static func selectors() -> [any CSS.Selector]

    @CSS.Builder<CSS.Property>
    static func properties() -> [any CSS.Property]
}

extension GlobalStyleComponent {

    public static var className: String {
        camelToHyphens(String(describing: self))
    }

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
        let properties = Self.properties()
        guard !properties.isEmpty else {
            return []
        }
        return [
            Class(name: Self.className, properties: properties)
        ]
    }

    public static func properties() -> [any CSS.Property] {
        []
    }
}
