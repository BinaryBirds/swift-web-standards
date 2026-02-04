//
//  HeadingOffsetAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct HeadingOffsetAttributeTestSuite {

    @Test
    func rendersHeadingOffsetValue() async throws {
        let tag = A {}
            .headingOffset(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a headingoffset="2"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
