//
//  ItemIdAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct ItemIdAttributeTestSuite {

    @Test
    func rendersItemIdValue() async throws {
        let tag = A {}
            .itemId("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a itemid="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
