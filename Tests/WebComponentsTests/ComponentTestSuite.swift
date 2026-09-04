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
import WebBuilders

@testable import WebComponents

@Suite
struct ComponentTestSuite {

    @Test
    func componentRendering() throws {
        let html = try #require(
            ComponentRenderer().render(MySimpleComponent(text: "lorem"))
        )
        let result = SGMLRenderer(indent: 4)
            .render(document: Document(root: html))

        #expect(
            result
                == #"""
                <div class="my-simple-component">
                    <p>lorem</p>
                    <span>foobarbaz</span>
                </div>
                """#
        )
    }

    @Test
    func componentRenderingTree() throws {
        let html = try #require(ComponentRenderer().render(ListComponent()))
        let result = SGMLRenderer().render(document: Document(root: html))

        #expect(
            result
                == #"""
                <div class="list-component"><p class="list-item">List item</p></div>
                """#
        )
    }

    @Test
    func componentStylesheetCollectorUsesComponentTree() {
        let rendered = CSSRenderer(minify: true)
            .render(
                ComponentStyleCollector()
                    .getStylesheet(from: ListComponent())
            )

        #expect(
            rendered
                == #"""
                .list-component{color:green}.list-item{color:red}
                """#
        )
    }
}
