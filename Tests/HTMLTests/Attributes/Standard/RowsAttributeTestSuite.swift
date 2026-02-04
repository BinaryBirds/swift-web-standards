//
//  RowsAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct RowsAttributeTestSuite {

    @Test
    func rendersRowsValue() async throws {
        let tag = Textarea {}
            .rows(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <textarea rows="2"></textarea>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
