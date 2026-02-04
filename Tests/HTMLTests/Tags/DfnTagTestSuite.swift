//
//  DfnTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct DfnTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Dfn("HTML")
            .title("HyperText Markup Language")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <dfn title="HyperText Markup Language">HTML</dfn>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
