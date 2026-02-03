//
//  MarkTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct MarkTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Mark("hello")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <mark>hello</mark>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
