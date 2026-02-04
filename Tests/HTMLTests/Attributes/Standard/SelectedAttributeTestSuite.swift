//
//  SelectedAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct SelectedAttributeTestSuite {

    @Test
    func rendersSelectedValue() async throws {
        let tag = Input()
            .type(.checkbox)
            .selected()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input type="checkbox" selected>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
