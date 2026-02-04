//
//  CommentTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct CommentTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Comment("this is a comment")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <!-- this is a comment -->
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
