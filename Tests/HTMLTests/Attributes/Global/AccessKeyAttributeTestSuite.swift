//
//  AccessKeyAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct AccessKeyAttributeTestSuite {

    @Test
    func rendersAccessKeyValue() async throws {
        let tag = A {}
            .accessKey("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a accesskey="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
