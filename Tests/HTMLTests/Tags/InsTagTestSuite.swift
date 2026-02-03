//
//  InsTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Testing

@testable import HTML

@Suite
struct InsTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Ins {
            Text("Lorem ipsum")
        }
        .dateTime("2009-10-11T01:25-07:00")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ins datetime="2009-10-11T01:25-07:00">Lorem ipsum</ins>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func rawTextWithCite() async throws {
        let tag = Ins("<strong>Added</strong>")
            .cite("https://example.com/changes")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ins cite="https://example.com/changes"><strong>Added</strong></ins>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
