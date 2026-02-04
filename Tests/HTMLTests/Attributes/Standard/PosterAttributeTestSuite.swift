//
//  PosterAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct PosterAttributeTestSuite {

    @Test
    func rendersPosterValue() async throws {
        let tag = Video {}
            .poster("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <video poster="value"></video>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
