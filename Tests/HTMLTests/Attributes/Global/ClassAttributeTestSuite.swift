//
//  ClassAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct ClassAttributeTestSuite {

    @Test
    func rendersClassValue() async throws {
        let tag = A {}
            .setClass("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a class="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
