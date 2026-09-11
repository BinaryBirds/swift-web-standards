//
//  PageComponent.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import HTML
import SGML
import WebBuilders
import WebComponents

struct PageComponent: Component {

    private let child = FooComponent(text: "Component subtree")

    func html(context: inout RenderContext) -> Div {
        Div { context.render(child) }
    }
}
