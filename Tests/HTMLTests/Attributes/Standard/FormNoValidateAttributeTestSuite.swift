//
//  FormNoValidateAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct FormNoValidateAttributeTestSuite {

    @Test
    func rendersFormNoValidateValue() async throws {
        let tag = Button {}
            .formNoValidate("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <button formnovalidate="value"></button>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
