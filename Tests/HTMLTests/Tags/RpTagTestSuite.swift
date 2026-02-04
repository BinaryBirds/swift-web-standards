//
//  RpTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct RpTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Rp("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <rp>Lorem ipsum</rp>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
