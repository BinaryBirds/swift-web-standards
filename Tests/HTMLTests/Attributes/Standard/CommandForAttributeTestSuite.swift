//
//  CommandForAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct CommandForAttributeTestSuite {

    @Test
    func rendersCommandForValue() async throws {
        let tag = Button {}
            .commandFor("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <button commandfor="value"></button>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
