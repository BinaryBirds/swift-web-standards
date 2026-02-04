//
//  OnResetAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnResetAttributeTestSuite {

    @Test
    func rendersOnResetValue() async throws {
        let tag = A {}
            .onReset("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onreset="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
