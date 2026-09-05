//
//  BorderRightColorTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct BorderRightColorTests {

    @Test
    func initializers() {
        let property = BorderRightColor(.color(.red))

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderRightColor(.color(.red))
            .important()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let transparent = BorderRightColor(.transparent)
        let named = BorderRightColor(.coral)
        let initial = BorderRightColor(.initial)

        let renderer = CSSRenderer()
        #expect(
            renderer.renderProperty(transparent)
                == "border-right-color: transparent"
        )
        #expect(renderer.renderProperty(named) == "border-right-color: coral")
        #expect(
            renderer.renderProperty(initial) == "border-right-color: initial"
        )
    }
}
