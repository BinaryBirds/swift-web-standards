//
//  FooComponent.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import HTML
import SGML
import WebBuilders
import WebComponents

struct FooComponent: Component {

    let text: String

    func html(context: inout RenderContext) -> Span {
        Span(text)
    }
}
