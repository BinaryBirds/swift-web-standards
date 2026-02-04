//
//  WbrTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct WbrTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Wbr()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <wbr>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
