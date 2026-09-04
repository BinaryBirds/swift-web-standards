//
//  SpellCheckAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct SpellCheckAttributeTestSuite {

    @Test
    func rendersSpellCheckValue() async throws {
        let tag = A {}
            .spellCheck(true)

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a spellcheck="true"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
