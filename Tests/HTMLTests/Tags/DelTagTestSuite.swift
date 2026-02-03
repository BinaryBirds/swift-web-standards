//
//  DelTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Testing

@testable import HTML

@Suite
struct DelTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Del {
            Text("Lorem ipsum")
        }
        .dateTime("2009-10-11T01:25-07:00")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <del datetime="2009-10-11T01:25-07:00">Lorem ipsum</del>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func rawTextWithCite() async throws {
        let tag = Del("<em>Removed</em>")
            .cite("https://example.com/changes")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <del cite="https://example.com/changes"><em>Removed</em></del>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
