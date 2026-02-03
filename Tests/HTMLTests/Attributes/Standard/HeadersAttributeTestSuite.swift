//
//  HeadersAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct HeadersAttributeTestSuite {

    @Test
    func rendersHeadersValue() async throws {
        let tag = Td {}
            .headers("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <td headers="value"></td>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
