//
//  AriaRowSpanAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct AriaRowSpanAttributeTestSuite {

    @Test
    func rendersAriaRowSpanValue() async throws {
        let tag = A {}
            .ariaRowSpan("value")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-rowspan="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
