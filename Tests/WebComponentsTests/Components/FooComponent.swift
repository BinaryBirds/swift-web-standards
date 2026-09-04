//
//  FooComponent.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import HTML
import SGML
import Utils
import WebComponents

struct FooComponent: Component {
    let text: String

    func renderHTML(children: [any Element]) -> any Element {
        Span(text)
    }
}
