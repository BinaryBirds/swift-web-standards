//
//  OnKeyPressAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnKeyPressAttributeTestSuite {

    @Test
    func rendersOnKeyPressValue() async throws {
        let tag = A {}
            .onKeyPress("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onkeypress="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
