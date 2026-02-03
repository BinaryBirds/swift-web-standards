//
//  H2TagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct H2TagTestSuite {

    @Test
    func initialization() async throws {
        let tag = H2("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <h2>Lorem ipsum</h2>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
