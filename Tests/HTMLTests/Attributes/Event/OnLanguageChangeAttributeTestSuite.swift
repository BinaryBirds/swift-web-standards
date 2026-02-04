//
//  OnLanguageChangeAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnLanguageChangeAttributeTestSuite {

    @Test
    func rendersOnLanguageChangeValue() async throws {
        let tag = A {}
            .onLanguageChange("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onlanguagechange="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
