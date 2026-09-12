//
//  MinLengthAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct MinLengthAttributeTestSuite {

    @Test
    func rendersMinLengthValue() async throws {
        let tag = Input()
            .minLength(2)

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input minlength="2">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
