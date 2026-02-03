//
//  LoopAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct LoopAttributeTestSuite {

    @Test
    func rendersLoopValue() async throws {
        let tag = Audio {}
            .loop()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <audio loop></audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
