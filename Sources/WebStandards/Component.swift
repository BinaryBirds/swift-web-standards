//
//  File.swift
//  dental-wiz-app
//
//  Created by Tibor Bödecs on 2026. 03. 06..
//

import CSS
import DOM
import HTML
import SGML

public protocol Component: SGML.Element {
    associatedtype Content: SGML.BasicTag

    var identifier: String { get }

    var className: String { get }

    @CSS.Builder<CSS.Rule>
    func rules() -> [any CSS.Rule]

    @CSS.Builder<CSS.Selector>
    func selectors() -> [any CSS.Selector]

    @CSS.Builder<CSS.Property>
    func properties() -> [any CSS.Property]

    // MARK: - html

    @ComponentContentBuilder
    func content() -> Content
}

extension Component {

    public var identifier: String {
        String(describing: type(of: self))
    }

    public var className: String {
        camelToHyphens(identifier)
    }

    public func rules() -> [any CSS.Rule] {
        let selectors = selectors()
        guard !selectors.isEmpty else {
            return []
        }
        return [
            Media(selectors: selectors)
        ]
    }

    public func selectors() -> [any CSS.Selector] {
        let properties = properties()
        guard !properties.isEmpty else {
            return []
        }
        return [
            Class(name: className, properties: properties)
        ]
    }

    public func properties() -> [any CSS.Property] {
        []
    }

    // MARK: - html body

    @ComponentContentBuilder
    internal func htmlBody() -> some SGML.BasicTag {
        let htmlBody = content()

        if properties().isEmpty {
            htmlBody
        }
        else if let group = htmlBody as? ComponentGroup {
            for child in group.children {
                if let child = child as? any SGML.BasicTag {
                    child.addAttribute(name: "class", value: className)
                }
                else {
                    child
                }
            }
        }
        else {
            htmlBody.addAttribute(name: "class", value: className)
        }
    }

    public var node: Node {
        htmlBody().node
    }
}
