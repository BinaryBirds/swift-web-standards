//
//  CaptionTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct CaptionTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Caption("Table 1.")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <caption>Table 1.</caption>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
