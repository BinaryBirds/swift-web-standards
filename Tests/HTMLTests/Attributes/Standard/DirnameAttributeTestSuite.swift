//
//  DirnameAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct DirnameAttributeTestSuite {

    @Test
    func rendersDirnameValue() async throws {
        let tag = Input()
            .dirname("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input dirname="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
