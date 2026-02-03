//
//  MenuTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Testing

@testable import HTML

@Suite
struct MenuTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Menu("Actions")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <menu>Actions</menu>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithElements() async throws {
        let tag = Menu {
            Li("Copy")
            Li("Paste")
        }
        .id("clipboard")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <menu id="clipboard"><li>Copy</li><li>Paste</li></menu>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
