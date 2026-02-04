//
//  OptimumAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OptimumAttributeTestSuite {

    @Test
    func rendersOptimumValue() async throws {
        let tag = Meter {}
            .optimum(1.5)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <meter optimum="1.5"></meter>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
