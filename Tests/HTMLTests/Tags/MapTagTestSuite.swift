//
//  MapTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct MapTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Map {

        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <map></map>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
