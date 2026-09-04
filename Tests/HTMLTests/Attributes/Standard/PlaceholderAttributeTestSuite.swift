//
//  PlaceholderAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct PlaceholderAttributeTestSuite {

    @Test
    func rendersPlaceholderValue() async throws {
        let tag = Input()
            .placeholder("value")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input placeholder="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
