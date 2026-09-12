//
//  FlexFlowTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct FlexFlowTests {

    @Test
    func initializers() {
        let property = FlexFlow(.initial)

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = FlexFlow(.initial)
            .important()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let values = FlexFlow(.row, .wrap)
        let inherit = FlexFlow(.inherit)

        let renderer = CSSRenderer()
        #expect(renderer.renderProperty(values) == "flex-flow: row wrap")
        #expect(renderer.renderProperty(inherit) == "flex-flow: inherit")
    }
}
