//
//  AriaReadOnlyAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct AriaReadOnlyAttributeTestSuite {

    @Test
    func rendersAriaReadOnlyValue() async throws {
        let tag = A {}
            .ariaReadOnly("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-readonly="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
