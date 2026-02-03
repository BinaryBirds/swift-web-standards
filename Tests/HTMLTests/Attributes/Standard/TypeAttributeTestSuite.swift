//
//  TypeAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct TypeAttributeTestSuite {

    @Test
    func rendersTypeValue() async throws {
        let tag = A {}
            .type("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a type="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
