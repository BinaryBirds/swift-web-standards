//
//  ContentEditableAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct ContentEditableAttributeTestSuite {

    @Test
    func rendersContentEditableValue() async throws {
        let tag = A {}
            .contentEditable("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a contenteditable="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
