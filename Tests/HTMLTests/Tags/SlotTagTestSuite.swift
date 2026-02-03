//
//  SlotTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Testing

@testable import HTML

@Suite
struct SlotTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Slot("Fallback")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <slot>Fallback</slot>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithElements() async throws {
        let tag = Slot {
            Span("Label")
        }
        .id("status")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <slot id="status"><span>Label</span></slot>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
