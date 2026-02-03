//
//  DefaultAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct DefaultAttributeTestSuite {

    @Test
    func rendersDefaultValue() async throws {
        let tag = Track(src: "foo.mp4")
            .`default`()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <track src="foo.mp4" default>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
