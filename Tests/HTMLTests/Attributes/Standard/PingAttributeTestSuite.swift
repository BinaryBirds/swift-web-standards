//
//  PingAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct PingAttributeTestSuite {

    @Test
    func rendersPingValue() async throws {
        let tag = Area()
            .ping("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <area ping="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
