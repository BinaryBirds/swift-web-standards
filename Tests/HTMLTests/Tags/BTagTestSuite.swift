//
//  BTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct BTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = B("hello")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <b>hello</b>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
