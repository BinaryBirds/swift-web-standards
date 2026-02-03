//
//  DecodingAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct DecodingAttributeTestSuite {

    @Test
    func rendersDecodingValues() async throws {
        let cases: [(DecodingAttributeValue, String)] = [
            (.sync, "sync"),
            (.async, "async"),
            (.auto, "auto"),
        ]

        for (value, raw) in cases {
            let tag = Img(src: "foo.jpg", alt: "Foo")
                .decoding(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <img src="foo.jpg" alt="Foo" decoding="\#(raw)">
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
