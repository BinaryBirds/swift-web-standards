//
//  ParamTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Testing

@testable import HTML

@Suite
struct ParamTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Param()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <param>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func nameAndValue() async throws {
        let tag = Param()
            .name(.description)
            .value("movie")
            .id("metadata")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <param name="description" value="movie" id="metadata">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
