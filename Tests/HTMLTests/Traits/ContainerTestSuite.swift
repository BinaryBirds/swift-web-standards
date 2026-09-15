//
//  ContainerTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct ContainerTestSuite {

    @Test
    func addChild() async throws {

        let tag = P("lorem ipsum")
            .addChild(Br())
            .addChild("foo")

        let renderer = SGMLRenderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p>lorem ipsum<br>foo</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func addChildren() async throws {

        let tag = P("lorem ipsum")
            .addChildren(
                [
                    " ",
                    "dolor",
                    " ",
                    "sit",
                    " ",
                    "amet",
                    ".",
                ]
            )

        let renderer = SGMLRenderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <p>lorem ipsum dolor sit amet.</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
