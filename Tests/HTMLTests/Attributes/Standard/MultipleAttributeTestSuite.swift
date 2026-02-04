//
//  MultipleAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct MultipleAttributeTestSuite {

    @Test
    func rendersMultipleValue() async throws {
        let tag = Input()
            .multiple()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input multiple>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
