//
//  ImgTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct ImgTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Img(src: "foo.jpg", alt: "Foo")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <img src="foo.jpg" alt="Foo">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func size() async throws {
        let tag = Img(src: "foo.jpg", alt: "Foo")
            .size(320)

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <img src="foo.jpg" alt="Foo" width="320" height="320">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
