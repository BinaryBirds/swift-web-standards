//
//  ThTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct ThTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Th("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <th></th>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
