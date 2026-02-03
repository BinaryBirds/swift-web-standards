//
//  DataAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct DataAttributeTestSuite {

    @Test
    func rendersDataValue() async throws {
        let tag = Object {}
            .data("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <object data="value"></object>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
