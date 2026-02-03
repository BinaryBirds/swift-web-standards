//
//  AriaErrorMessageAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct AriaErrorMessageAttributeTestSuite {

    @Test
    func rendersAriaErrorMessageValue() async throws {
        let tag = A {}
            .ariaErrorMessage("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-errormessage="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
