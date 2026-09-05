//
//  FigcaptionTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct FigcaptionTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Figcaption("")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <figcaption></figcaption>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
