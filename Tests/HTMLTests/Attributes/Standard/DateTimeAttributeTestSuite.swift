//
//  DateTimeAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct DateTimeAttributeTestSuite {

    @Test
    func rendersDateTimeValue() async throws {
        let tag = Del {}
            .dateTime("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <del datetime="value"></del>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
