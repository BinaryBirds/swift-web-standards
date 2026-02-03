//
//  WritingSuggestionsAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct WritingSuggestionsAttributeTestSuite {

    @Test
    func rendersWritingSuggestionsValue() async throws {
        let tag = A {}
            .writingSuggestions("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a writingsuggestions="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
