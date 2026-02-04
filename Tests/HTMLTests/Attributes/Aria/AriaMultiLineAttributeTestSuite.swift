//
//  AriaMultiLineAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct AriaMultiLineAttributeTestSuite {

    @Test
    func rendersAriaMultiLineValue() async throws {
        let tag = A {}
            .ariaMultiLine("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-multiline="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
