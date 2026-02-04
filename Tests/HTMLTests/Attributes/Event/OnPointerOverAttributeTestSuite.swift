//
//  OnPointerOverAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnPointerOverAttributeTestSuite {

    @Test
    func rendersOnPointerOverValue() async throws {
        let tag = A {}
            .onPointerOver("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpointerover="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
