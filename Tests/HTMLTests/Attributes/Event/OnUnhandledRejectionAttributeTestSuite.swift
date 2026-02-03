//
//  OnUnhandledRejectionAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnUnhandledRejectionAttributeTestSuite {

    @Test
    func rendersOnUnhandledRejectionValue() async throws {
        let tag = A {}
            .onUnhandledRejection("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onunhandledrejection="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
