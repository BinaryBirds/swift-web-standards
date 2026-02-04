//
//  H3TagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct H3TagTestSuite {

    @Test
    func initialization() async throws {
        let tag = H3("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <h3>Lorem ipsum</h3>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
