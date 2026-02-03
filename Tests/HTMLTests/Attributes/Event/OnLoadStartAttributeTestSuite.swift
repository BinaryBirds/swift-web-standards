//
//  OnLoadStartAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnLoadStartAttributeTestSuite {

    @Test
    func rendersOnLoadStartValue() async throws {
        let tag = A {}
            .onLoadStart("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onloadstart="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
