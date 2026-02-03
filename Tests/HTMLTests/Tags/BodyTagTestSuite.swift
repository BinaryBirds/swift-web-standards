//
//  BodyTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct BodyTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Body {
            P("hello")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <body><p>hello</p></body>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
