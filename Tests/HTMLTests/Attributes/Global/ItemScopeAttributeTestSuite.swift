//
//  ItemScopeAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct ItemScopeAttributeTestSuite {

    @Test
    func rendersItemScopeValue() async throws {
        let tag = A {}
            .itemScope()

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a itemscope></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
