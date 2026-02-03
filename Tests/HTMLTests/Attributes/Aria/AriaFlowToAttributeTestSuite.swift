//
//  AriaFlowToAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct AriaFlowToAttributeTestSuite {

    @Test
    func rendersAriaFlowToValue() async throws {
        let tag = A {}
            .ariaFlowTo("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-flowto="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
