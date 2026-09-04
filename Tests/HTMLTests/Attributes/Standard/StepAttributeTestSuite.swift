//
//  StepAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct StepAttributeTestSuite {

    @Test
    func rendersStepValue() async throws {
        let tag = Input()
            .step(2)

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input step="2">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
