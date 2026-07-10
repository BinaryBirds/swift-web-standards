//
//  File.swift
//  swift-web-standards
//
//  Created by Tibor Bödecs on 2026. 07. 10..
//

import SGML
import Testing

@testable import HTML
@testable import CSS
@testable import SVG
@testable import WebStandards

@Suite
struct ComponentTestSuite {

    @Test
    func componentRendering() async throws {
        let html = Div {
            MySimpleComponent(text: "lorem")
        }

        let htmlRenderer = Renderer(indent: 4)
        let doc = Document(root: html)

        let expectation = #"""
            <div>
                <p class="my-simple-component">lorem</p>
                <span class="my-simple-component">foobarbaz</span>
            </div>
            """#

        let result = htmlRenderer.render(document: doc)
        #expect(result == expectation)

        let collector = ComponentStylesheetCollector()
        let renderer = StylesheetRenderer(minify: true)
        let rendered = renderer.render(collector.getStylesheet(from: html))

        #expect(rendered == ".my-simple-component{background:red;color:cyan}")
    }
}
