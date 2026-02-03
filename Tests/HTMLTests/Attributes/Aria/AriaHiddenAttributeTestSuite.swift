//
//  AriaHiddenAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct AriaHiddenAttributeTestSuite {

    @Test
    func rendersAriaHiddenValue() async throws {
        let tag = A {}
            .ariaHidden("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-hidden="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
