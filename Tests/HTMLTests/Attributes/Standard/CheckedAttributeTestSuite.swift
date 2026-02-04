//
//  CheckedAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct CheckedAttributeTestSuite {

    @Test
    func rendersCheckedValue() async throws {
        let tag = Input()
            .checked()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input checked>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
