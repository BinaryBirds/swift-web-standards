//
//  BlockquoteTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct BlockquoteTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Blockquote("Hello, World!")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <blockquote>Hello, World!</blockquote>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func cite() async throws {
        let tag = Blockquote("Hello, World!")
            .cite("unknown")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <blockquote cite="unknown">Hello, World!</blockquote>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
