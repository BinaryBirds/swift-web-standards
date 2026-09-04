//
//  ComponentTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import CSS
import DOM
import HTML
import SGML
import Testing
import Utils

@testable import WebComponents

@Suite
struct ComponentTestSuite {

    @Test
    func componentRendering() {
        let html = ComponentRenderer().render(MySimpleComponent(text: "lorem"))
        let result = Renderer(indent: 4)
            .render(document: Document(root: html))

        #expect(
            result
                == "<div class=\"my-simple-component\">\n    <p>lorem</p>\n    <span>foobarbaz</span>\n</div>"
        )
    }

    @Test
    func componentRenderingTree() {
        let html = ComponentRenderer().render(ListComponent())
        let result = Renderer().render(document: Document(root: html))

        #expect(
            result
                == "<div class=\"list-component\"><p class=\"list-item\">List item</p></div>"
        )
    }

    @Test
    func componentStylesheetCollectorUsesComponentTree() {
        let rendered = StylesheetRenderer(minify: true)
            .render(
                ComponentStylesheetCollector()
                    .getStylesheet(from: ListComponent())
            )

        #expect(rendered == ".list-component{color:green}.list-item{color:red}")
    }
}
