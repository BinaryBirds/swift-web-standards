//
//  HiddenAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct HiddenAttributeTestSuite {

    @Test
    func rendersHiddenValue() async throws {
        let tag = A {}
            .hidden()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a hidden></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
