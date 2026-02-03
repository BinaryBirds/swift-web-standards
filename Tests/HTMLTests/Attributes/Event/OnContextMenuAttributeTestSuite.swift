//
//  OnContextMenuAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnContextMenuAttributeTestSuite {

    @Test
    func rendersOnContextMenuValue() async throws {
        let tag = A {}
            .onContextMenu("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a oncontextmenu="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
