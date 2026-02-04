//
//  OnBeforeInputAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnBeforeInputAttributeTestSuite {

    @Test
    func rendersOnBeforeInputValue() async throws {
        let tag = A {}
            .onBeforeInput("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onbeforeinput="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
