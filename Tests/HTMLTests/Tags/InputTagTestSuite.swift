//
//  InputTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct InputTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Input()
            .name("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input name="foo">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func checkedInput() async throws {
        let tag = Input()
            .type(.checkbox)
            .checked()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input type="checkbox" checked>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func checkedInputFalse() async throws {
        let condition = false

        let tag = Input()
            .type(.checkbox)
            .if(condition) {
                $0.checked()
            }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input type="checkbox">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func requiredFlagAttribute() async throws {
        let condition = true

        let tag = Input()
            .if(condition) {
                $0.required()
            }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <input required>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
