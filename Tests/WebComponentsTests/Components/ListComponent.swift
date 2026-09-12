//
//  ListComponent.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import CSS
import HTML
import SGML
import WebBuilders
import WebComponents

struct ListComponent: Component {

    private let item = ListItemComponent()

    func selectors() -> [any Selector] {
        Class("list-component") {
            Color(.green)
        }
    }

    func html(context: inout RenderContext) -> Div {
        Div {
            context.render(item)
        }
        .class("list-component")
    }
}
