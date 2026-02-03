//
//  SizeAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct SizeAttributeTestSuite {

    @Test
    func rendersSizeValue() async throws {
        let tag = Input()
            .size(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input size="2">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
