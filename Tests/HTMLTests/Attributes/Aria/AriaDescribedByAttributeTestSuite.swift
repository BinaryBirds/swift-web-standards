//
//  AriaDescribedByAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct AriaDescribedByAttributeTestSuite {

    @Test
    func rendersAriaDescribedByValue() async throws {
        let tag = A {}
            .ariaDescribedBy("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-describedby="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
