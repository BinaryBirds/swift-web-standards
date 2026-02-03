//
//  IsMapAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct IsMapAttributeTestSuite {

    @Test
    func rendersIsMapValue() async throws {
        let tag = Img(src: "foo.jpg", alt: "Foo")
            .isMap("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <img src="foo.jpg" alt="Foo" ismap="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
