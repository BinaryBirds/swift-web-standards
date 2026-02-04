//
//  H6TagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct H6TagTestSuite {

    @Test
    func initialization() async throws {
        let tag = H6("Lorem ipsum")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <h6>Lorem ipsum</h6>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
