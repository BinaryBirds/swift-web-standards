//
//  AriaBusyAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct AriaBusyAttributeTestSuite {

    @Test
    func rendersAriaBusyValue() async throws {
        let tag = A {}
            .ariaBusy("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a aria-busy="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
