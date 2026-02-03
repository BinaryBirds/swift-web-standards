//
//  MutedAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct MutedAttributeTestSuite {

    @Test
    func rendersMutedValue() async throws {
        let tag = Audio {}
            .muted()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <audio muted></audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
