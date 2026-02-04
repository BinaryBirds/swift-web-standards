//
//  CrossOriginAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct CrossOriginAttributeTestSuite {

    @Test
    func rendersCrossOriginValues() async throws {
        let cases: [(CrossOriginAttributeValue, String)] = [
            (.anonymous, "anonymous"),
            (.useCredentials, "use-credentials"),
        ]

        for (value, raw) in cases {
            let tag = Img(src: "foo.jpg", alt: "Foo")
                .crossOrigin(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <img src="foo.jpg" alt="Foo" crossorigin="\#(raw)">
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
