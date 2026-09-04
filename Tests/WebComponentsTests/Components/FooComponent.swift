//
//  FooComponent.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import HTML
import SGML
import Utils
import WebComponents

struct FooComponent: LeafComponent {

    let text: String

    func renderHTML() -> any Element {
        Span(text)
    }
}
