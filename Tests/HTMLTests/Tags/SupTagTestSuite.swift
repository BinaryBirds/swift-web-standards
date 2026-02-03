//
//  SupTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct SupTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Sup("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <sup>foo</sup>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
