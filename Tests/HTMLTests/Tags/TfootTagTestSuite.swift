//
//  TfootTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct TfootTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Tfoot("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <tfoot></tfoot>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
