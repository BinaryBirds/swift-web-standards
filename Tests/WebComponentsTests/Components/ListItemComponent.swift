//
//  ListItemComponent.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import CSS
import HTML
import SGML
import WebBuilders
import WebComponents

struct ListItemComponent: Component {

    func selectors() -> [any Selector] {
        Class("list-item") {
            Color(.red)
        }
    }

    func html(context: inout RenderContext) -> P {
        P("List item")
            .class("list-item")
    }
}
