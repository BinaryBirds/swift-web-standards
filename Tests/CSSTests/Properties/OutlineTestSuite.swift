//
//  OutlineTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct OutlineTests {

    @Test
    func initializers() {
        let property = Outline(.initial)

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Outline(.initial)
            .important()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func shorthand() {
        let property = Outline(
            1.px,
            .solid,
            .color(.variable(CSSVariableReference("outline-color")))
        )

        let renderer = CSSRenderer()
        #expect(
            renderer.renderProperty(property)
                == "outline: 1px solid var(--outline-color)"
        )
    }
}
