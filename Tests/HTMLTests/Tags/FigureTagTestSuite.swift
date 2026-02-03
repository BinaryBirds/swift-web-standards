//
//  FigureTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct FigureTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Figure("")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <figure></figure>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
