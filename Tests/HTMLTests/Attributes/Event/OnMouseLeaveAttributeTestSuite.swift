//
//  OnMouseLeaveAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnMouseLeaveAttributeTestSuite {

    @Test
    func rendersOnMouseLeaveValue() async throws {
        let tag = A {}
            .onMouseLeave("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onmouseleave="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
