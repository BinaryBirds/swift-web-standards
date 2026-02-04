//
//  NonceAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct NonceAttributeTestSuite {

    @Test
    func rendersNonceValue() async throws {
        let tag = A {}
            .nonce("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a nonce="value"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
