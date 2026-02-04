//
//  AutoPlayAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct AutoPlayAttributeTestSuite {

    @Test
    func rendersAutoPlayValue() async throws {
        let tag = Audio {}
            .autoPlay()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <audio autoplay></audio>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
