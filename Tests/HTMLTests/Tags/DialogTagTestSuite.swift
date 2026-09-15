//
//  DialogTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct DialogTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Dialog("test")
            .closedBy(.any)

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <dialog closedby="any">test</dialog>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
