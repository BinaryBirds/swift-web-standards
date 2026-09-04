//
//  PageComponent.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import HTML
import SGML
import WebBuilders
import WebComponents

struct PageComponent: Branch {

    private let child = FooComponent(text: "Component subtree")

    var children: [any Component] {
        child
    }

    func renderHTML(renderer: ComponentRenderer) -> Div {
        Div { renderer.render(child) }
    }
}
