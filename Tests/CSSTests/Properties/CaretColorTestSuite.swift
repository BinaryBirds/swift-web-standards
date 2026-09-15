//
//  CaretColorTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct CaretColorTests {

    @Test
    func initializers() {
        let property = CaretColor()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = CaretColor()
            .important()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let auto = CaretColor(.auto)
        let color = CaretColor(.blue)
        let inherit = CaretColor(.inherit)

        let renderer = CSSRenderer()
        #expect(renderer.renderProperty(auto) == "caret-color: auto")
        #expect(renderer.renderProperty(color) == "caret-color: blue")
        #expect(renderer.renderProperty(inherit) == "caret-color: inherit")
    }
}
