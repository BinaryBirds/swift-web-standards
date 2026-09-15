//
//  CodeTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct CodeTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Code("console.log();")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <code>console.log();</code>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithBuilder() async throws {
        let tag = Code {
            "console.log();"
        }

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <code>console.log();</code>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func nestedInsidePre() async throws {
        let tag = Pre {
            Code {
                "console.log();"
            }
            .class("language-javascript")
        }

        let renderer = SGMLRenderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <pre>
                <code class="language-javascript">console.log();</code>
            </pre>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
