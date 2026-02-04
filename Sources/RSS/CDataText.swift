//
//  CDataText.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import DOM
import SGML

public struct CDataText: Element {

    public var text: String

    public init(_ text: String) {
        self.text = text
    }

    public var node: Node {
        TextNode(
            value: "<![CDATA[" + text + "]]>"
        )
    }
}
