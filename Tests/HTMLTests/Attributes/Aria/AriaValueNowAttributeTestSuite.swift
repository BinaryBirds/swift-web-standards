//
//  AriaValueNowAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct AriaValueNowAttributeTestSuite {

    @Test
    func rendersAriaValueNowValue() async throws {
        let tag = A {}
            .ariaValueNow("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-valuenow="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
