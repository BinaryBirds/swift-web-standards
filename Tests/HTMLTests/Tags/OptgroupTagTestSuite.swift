//
//  OptgroupTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct OptgroupTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Optgroup {

        }

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <optgroup></optgroup>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
