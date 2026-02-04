//
//  OnPageRevealAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnPageRevealAttributeTestSuite {

    @Test
    func rendersOnPageRevealValue() async throws {
        let tag = A {}
            .onPageReveal("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpagereveal="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
