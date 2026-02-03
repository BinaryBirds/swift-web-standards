//
//  SizesAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct SizesAttributeTestSuite {

    @Test
    func rendersSizesValue() async throws {
        let tag = Img(src: "foo.jpg", alt: "Foo")
            .sizes("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <img src="foo.jpg" alt="Foo" sizes="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
