//
//  OnPointerOutAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct OnPointerOutAttributeTestSuite {

    @Test
    func rendersOnPointerOutValue() async throws {
        let tag = A {}
            .onPointerOut("handler()")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpointerout="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
