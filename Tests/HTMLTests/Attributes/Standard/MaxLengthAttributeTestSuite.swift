//
//  MaxLengthAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct MaxLengthAttributeTestSuite {

    @Test
    func rendersMaxLengthValue() async throws {
        let tag = Input()
            .maxLength(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input maxlength="2">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
