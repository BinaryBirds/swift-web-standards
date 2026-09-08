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

struct MySimpleComponent: Leaf {
    let text: String

    func selectors() -> [any Selector] {
        Class("my-simple-component") {
            Background(color: CSSColorValue.color(.red))
            Color(CSSColorValue.color(.cyan))
        }
    }

    func html() -> Div {
        Div {
            P(text)
            Span("foobarbaz")
        }
        .class("my-simple-component")
    }
}
