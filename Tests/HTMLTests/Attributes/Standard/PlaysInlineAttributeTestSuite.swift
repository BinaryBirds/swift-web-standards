//
//  PlaysInlineAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct PlaysInlineAttributeTestSuite {

    @Test
    func rendersPlaysInlineValue() async throws {
        let tag = Video {}
            .playsInline()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <video playsinline></video>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
