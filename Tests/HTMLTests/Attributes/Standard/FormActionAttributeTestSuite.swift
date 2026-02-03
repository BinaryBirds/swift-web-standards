//
//  FormActionAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct FormActionAttributeTestSuite {

    @Test
    func rendersFormActionValue() async throws {
        let tag = Button {}
            .formAction("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <button formaction="value"></button>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
