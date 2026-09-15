//
//  StartAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct StartAttributeTestSuite {

    @Test
    func rendersStartValue() async throws {
        let tag = Ol {}
            .start(2)

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ol start="2"></ol>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
