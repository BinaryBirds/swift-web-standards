//
//  HrefAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct HrefAttributeTestSuite {

    @Test
    func rendersHrefValue() async throws {
        let tag = A {}
            .href("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a href="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
