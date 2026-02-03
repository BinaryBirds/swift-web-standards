//
//  RtTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct RtTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Rt("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <rt>Lorem ipsum</rt>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
