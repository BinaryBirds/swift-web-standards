//
//  TabIndexAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct TabIndexAttributeTestSuite {

    @Test
    func rendersTabIndexValue() async throws {
        let tag = A {}
            .tabIndex(2)

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a tabindex="2"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
