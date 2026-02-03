//
//  OnPointerMoveAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnPointerMoveAttributeTestSuite {

    @Test
    func rendersOnPointerMoveValue() async throws {
        let tag = A {}
            .onPointerMove("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpointermove="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
