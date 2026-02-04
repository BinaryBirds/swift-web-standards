//
//  OnSelectionChangeAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnSelectionChangeAttributeTestSuite {

    @Test
    func rendersOnSelectionChangeValue() async throws {
        let tag = A {}
            .onSelectionChange("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onselectionchange="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
