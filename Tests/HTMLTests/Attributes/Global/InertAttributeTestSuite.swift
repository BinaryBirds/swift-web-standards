//
//  InertAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct InertAttributeTestSuite {

    @Test
    func rendersInertValue() async throws {
        let tag = A {}
            .inert()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a inert></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
