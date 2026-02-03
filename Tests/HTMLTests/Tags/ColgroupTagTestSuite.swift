//
//  ColgroupTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Testing

@testable import HTML

@Suite
struct ColgroupTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Colgroup {
            Col()
                .span(2)
        }
        .span(4)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <colgroup span="4"><col span="2"></colgroup>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func textContent() async throws {
        let tag = Colgroup("Columns")
            .id("table-columns")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <colgroup id="table-columns">Columns</colgroup>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
