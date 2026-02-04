//
//  AriaValueMinAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct AriaValueMinAttributeTestSuite {

    @Test
    func rendersAriaValueMinValue() async throws {
        let tag = A {}
            .ariaValueMin("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-valuemin="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
