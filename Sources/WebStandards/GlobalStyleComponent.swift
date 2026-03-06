//
//  File.swift
//  puppylepsy-web-app
//
//  Created by Tibor Bödecs on 2026. 03. 01..
//

import SGML
import HTML
import CSS
import DOM

public protocol GlobalStyleComponent {
    
    static var className: String { get }
    
    @CSS.Builder<CSS.Rule>
    static func rules() -> [any CSS.Rule]
    
    @CSS.Builder<CSS.Selector>
    static func selectors() -> [any CSS.Selector]
    
    @CSS.Builder<CSS.Property>
    static func properties() -> [any CSS.Property]
}

public extension GlobalStyleComponent {

    static var className: String {
        camelToHyphens(String(describing: self))
    }

    static func rules() -> [any CSS.Rule] {
        let selectors = Self.selectors()
        guard !selectors.isEmpty else {
            return []
        }
        return [
            Media(selectors: selectors),
        ]
    }
    
    static func selectors() -> [any CSS.Selector] {
        let properties = Self.properties()
        guard !properties.isEmpty else {
            return []
        }
        return [
            Class(name: Self.className, properties: properties),
        ]
    }
    
    static func properties() -> [any CSS.Property] {
        []
    }
}
