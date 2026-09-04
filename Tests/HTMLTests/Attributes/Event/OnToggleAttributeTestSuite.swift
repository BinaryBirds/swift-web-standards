//
//  OnToggleAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct OnToggleAttributeTestSuite {

    @Test
    func rendersOnToggleValue() async throws {
        let tag = A {}
            .onToggle("handler()")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ontoggle="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
