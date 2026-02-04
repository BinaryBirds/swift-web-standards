//
//  TitleAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct TitleAttributeTestSuite {

    @Test
    func rendersTitleValue() async throws {
        let tag = A {}
            .title("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a title="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
