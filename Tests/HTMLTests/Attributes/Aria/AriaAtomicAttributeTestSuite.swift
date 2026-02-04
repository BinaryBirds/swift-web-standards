//
//  AriaAtomicAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct AriaAtomicAttributeTestSuite {

    @Test
    func rendersAriaAtomicValue() async throws {
        let tag = A {}
            .ariaAtomic("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-atomic="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
