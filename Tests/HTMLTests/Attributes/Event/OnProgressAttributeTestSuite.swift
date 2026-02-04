//
//  OnProgressAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnProgressAttributeTestSuite {

    @Test
    func rendersOnProgressValue() async throws {
        let tag = A {}
            .onProgress("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onprogress="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
