//
//  DetailsTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct DetailsTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Details("")
            .open()

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <details open></details>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
