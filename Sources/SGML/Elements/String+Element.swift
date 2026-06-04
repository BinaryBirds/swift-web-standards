//
//  String+Element.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 06. 04.

import DOM

extension String: Element {

    /// The node.
    public var node: Node {
        DOM.InlineText(self)
    }
}
