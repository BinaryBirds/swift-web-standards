//
//  ActionAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct ActionAttributeTestSuite {

    @Test
    func rendersActionValue() async throws {
        let tag = Form {}
            .action("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <form action="value"></form>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
