//
//  IdAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct IdAttributeTestSuite {

    @Test
    func rendersIdValue() async throws {
        let tag = A {}
            .id("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a id="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
