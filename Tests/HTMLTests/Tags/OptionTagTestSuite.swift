//
//  OptionTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Testing

@testable import HTML

@Suite
struct OptionTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Option("foo")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <option>foo</option>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func attributes() async throws {
        let tag = Option("Swift")
            .value("swift")
            .label("Swift Language")
            .selected()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <option value="swift" label="Swift Language" selected>Swift</option>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func disabledOption() async throws {
        let tag = Option("Unavailable")
            .disabled()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <option disabled>Unavailable</option>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
