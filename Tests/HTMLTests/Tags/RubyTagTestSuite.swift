//
//  RubyTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct RubyTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Ruby("Lorem ipsum")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ruby>Lorem ipsum</ruby>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
