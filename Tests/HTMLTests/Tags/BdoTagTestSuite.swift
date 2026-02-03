//
//  BdoTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Testing

@testable import HTML

@Suite
struct BdoTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Bdo("hello", dir: .rtl)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <bdo dir="rtl">hello</bdo>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithElements() async throws {
        let tag = Bdo(
            {
                Span("left")
                Text(" to ")
                Span("right")
            },
            dir: .ltr
        )

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <bdo dir="ltr"><span>left</span> to <span>right</span></bdo>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
