//
//  SpanAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct SpanAttributeTestSuite {

    @Test
    func rendersSpanValue() async throws {
        let tag = Col()
            .span(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <col span="2">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
