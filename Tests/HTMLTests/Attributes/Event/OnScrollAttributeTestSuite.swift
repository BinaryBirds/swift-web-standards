//
//  OnScrollAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnScrollAttributeTestSuite {

    @Test
    func rendersOnScrollValue() async throws {
        let tag = Div {}
            .onScroll("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <div onscroll="handler()"></div>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
