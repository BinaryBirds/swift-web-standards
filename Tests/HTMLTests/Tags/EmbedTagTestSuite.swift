//
//  EmbedTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct EmbedTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Embed()
            .src("foo")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <embed src="foo">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
