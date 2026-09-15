//
//  RequiredAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct RequiredAttributeTestSuite {

    @Test
    func rendersRequiredValue() async throws {
        let tag = Input()
            .required()

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input required>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
