//
//  LangAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct LangAttributeTestSuite {

    @Test
    func rendersLangValue() async throws {
        let tag = A {}
            .lang("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a lang="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
