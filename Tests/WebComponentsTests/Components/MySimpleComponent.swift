//
//  MySimpleComponent.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import CSS
import HTML
import SGML
import WebBuilders
import WebComponents

struct MySimpleComponent: Component {
    let text: String

    func selectors() -> [any Selector] {
        Class("my-simple-component") {
            Background(color: CSSColorValue.color(.red))
            Color(.cyan)
        }
    }

    func html(context: inout RenderContext) -> Div {
        Div {
            P(text)
            Span("foobarbaz")
        }
        .class("my-simple-component")
    }
}
