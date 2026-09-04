//
//  NoscriptTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct NoscriptTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Noscript("No JS")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <noscript>No JS</noscript>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
