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

struct ListComponent: Composite {

    func selectors() -> [any Selector] {
        Class("list-component") { Color(.green) }
    }

    var body: [any Component] {
        ListItemComponent()
    }

    func renderHTML(
        children: [any Element]
    ) -> any Element {
        Div {
            children
        }
        .class("list-component")
    }
}
