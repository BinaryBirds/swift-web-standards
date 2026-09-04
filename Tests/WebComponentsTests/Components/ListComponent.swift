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

struct ListComponent: Branch {

    private let item = ListItemComponent()

    var children: [any Component] {
        item
    }

    func selectors() -> [any Selector] {
        Class("list-component") {
            Color(.green)
        }
    }

    func renderHTML(renderer: ComponentRenderer) -> Div {
        Div {
            renderer.render(item)
        }
        .class("list-component")
    }
}
