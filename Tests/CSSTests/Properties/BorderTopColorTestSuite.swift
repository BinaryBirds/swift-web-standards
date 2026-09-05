//
//  BorderTopColorTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct BorderTopColorTests {

    @Test
    func initializers() {
        let property = BorderTopColor(.color(.red))

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderTopColor(.color(.red))
            .important()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let transparent = BorderTopColor(.transparent)
        let named = BorderTopColor(.gold)
        let inherit = BorderTopColor(.inherit)

        let renderer = CSSRenderer()
        #expect(
            renderer.renderProperty(transparent)
                == "border-top-color: transparent"
        )
        #expect(renderer.renderProperty(named) == "border-top-color: gold")
        #expect(renderer.renderProperty(inherit) == "border-top-color: inherit")
    }
}
