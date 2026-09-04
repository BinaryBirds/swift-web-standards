//
//  TrackTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct TrackTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Track(src: "foo.mp4")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <track src="foo.mp4">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
