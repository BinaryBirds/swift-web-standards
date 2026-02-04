//
//  OnPlayingAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnPlayingAttributeTestSuite {

    @Test
    func rendersOnPlayingValue() async throws {
        let tag = A {}
            .onPlaying("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onplaying="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
