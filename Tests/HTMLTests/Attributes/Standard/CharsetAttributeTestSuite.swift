//
//  CharsetAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct CharsetAttributeTestSuite {

    @Test
    func rendersCharsetValue() async throws {
        let tag = Meta()
            .charset("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <meta charset="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
