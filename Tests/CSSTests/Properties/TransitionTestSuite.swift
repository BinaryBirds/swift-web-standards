//
//  TransitionTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct TransitionTests {

    @Test
    func initializers() {
        let property = Transition(.initial)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Transition(.initial)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let property = Transition(
            .values(
                .properties(["opacity", "transform"]),
                .seconds(0.2),
                .easeOut,
                .milliseconds(150)
            )
        )

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        #expect(result == "transition: opacity,transform 0.2s ease-out 150.0ms")
    }
}
