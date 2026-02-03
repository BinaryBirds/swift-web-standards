//
//  OnKeyDownAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnKeyDownAttributeTestSuite {

    @Test
    func rendersOnKeyDownValue() async throws {
        let tag = A {}
            .onKeyDown("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onkeydown="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
