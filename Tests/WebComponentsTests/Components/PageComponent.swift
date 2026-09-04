//
//  PageComponent.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import HTML
import SGML
import Utils
import WebComponents

struct PageComponent: ContainerComponent {

    var body: [any Component] {
        FooComponent(text: "Component subtree")
    }

    func renderHTML(
        children: [any Element]
    ) -> any Element {
        Div { children }
    }
}
