//
//  OnPointerLeaveAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnPointerLeaveAttributeTestSuite {

    @Test
    func rendersOnPointerLeaveValue() async throws {
        let tag = A {}
            .onPointerLeave("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onpointerleave="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
