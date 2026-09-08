//
//  BorderColorTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct BorderColorTests {

    @Test
    func initializers() {
        let property = BorderColor(.color(.red))

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderColor(.color(.red))
            .important()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let transparent = BorderColor(.transparent)
        let named = BorderColor(.color(.blue))
        let inherit = BorderColor(.inherit)
        let two = BorderColor(.color(.red), .variable("border-color"))
        let three = BorderColor(.color(.red), .color(.green), .color(.blue))
        let four = BorderColor(
            .color(.red),
            .color(.green),
            .color(.blue),
            .transparent
        )

        let renderer = CSSRenderer()
        #expect(
            renderer.renderProperty(transparent) == "border-color: transparent"
        )
        #expect(renderer.renderProperty(named) == "border-color: blue")
        #expect(renderer.renderProperty(inherit) == "border-color: inherit")
        #expect(
            renderer.renderProperty(two)
                == "border-color: red var(--border-color)"
        )
        #expect(
            renderer.renderProperty(three)
                == "border-color: red green blue"
        )
        #expect(
            renderer.renderProperty(four)
                == "border-color: red green blue transparent"
        )
    }
}
