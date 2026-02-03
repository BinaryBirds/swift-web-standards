//
//  FetchPriorityAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct FetchPriorityAttributeTestSuite {

    @Test
    func rendersFetchPriorityValues() async throws {
        let cases: [(FetchPriorityAttributeValue, String)] = [
            (.high, "high"),
            (.low, "low"),
            (.auto, "auto"),
        ]

        for (value, raw) in cases {
            let tag = Img(src: "foo.jpg", alt: "Foo")
                .fetchPriority(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <img src="foo.jpg" alt="Foo" fetchpriority="\#(raw)">
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
