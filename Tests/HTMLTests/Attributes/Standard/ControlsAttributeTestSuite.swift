//
//  ControlsAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct ControlsAttributeTestSuite {

    @Test
    func rendersControlsValue() async throws {
        let tag = Audio {}
            .controls()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <audio controls></audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
