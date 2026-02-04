//
//  SelectedContentTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Testing

@testable import HTML

@Suite
struct SelectedContentTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = SelectedContent("Item")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <selectedcontent>Item</selectedcontent>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithElements() async throws {
        let tag = SelectedContent {
            Span("Selection")
        }
        .id("current")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <selectedcontent id="current"><span>Selection</span></selectedcontent>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
