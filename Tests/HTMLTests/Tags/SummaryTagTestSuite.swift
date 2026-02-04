//
//  SummaryTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct SummaryTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Summary("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <summary>foo</summary>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
