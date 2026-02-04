//
//  OnSelectStartAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnSelectStartAttributeTestSuite {

    @Test
    func rendersOnSelectStartValue() async throws {
        let tag = A {}
            .onSelectStart("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onselectstart="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
