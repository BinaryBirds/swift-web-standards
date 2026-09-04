//
//  MySimpleComponent.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import CSS
import HTML
import SGML
import Utils
import WebComponents

struct MySimpleComponent: LeafComponent {
    let text: String

    func selectors() -> [any Selector] {
        Class("my-simple-component") {
            Background(color: .red)
            Color(.cyan)
        }
    }

    func renderHTML() -> any Element {
        Div {
            P(text)
            Span("foobarbaz")
        }
        .class("my-simple-component")
    }
}
