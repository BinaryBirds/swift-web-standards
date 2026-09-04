//
//  AlphaAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct AlphaAttributeTestSuite {

    @Test
    func rendersAlphaValue() async throws {
        let tag = Input()
            .alpha("value")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input alpha="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
