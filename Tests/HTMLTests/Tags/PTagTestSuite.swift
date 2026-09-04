//
//  PTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct PTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = P("Lorem ipsum")
            .class("foo")
            .addClass("bar")
        //            .addChild(Comment("foo"))

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <p class="foo bar">Lorem ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithChildren() async throws {
        let tag = P {
            "lorem"
            A("Hello, world!")
                .href("/")
            "ipsum"
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <p>lorem<a href="/">Hello, world!</a>ipsum</p>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
