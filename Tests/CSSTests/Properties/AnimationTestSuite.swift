//
//  AnimationTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct AnimationTests {

    @Test
    func initializers() {
        let property = Animation(.inherit)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Animation(.inherit)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let property = Animation(
            "fade",
            duration: .seconds(2),
            timingFunction: .easeInOut,
            delay: .milliseconds(150),
            iterationCount: 2,
            direction: .alternate,
            fillMode: .both,
            playState: .running
        )

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation =
            "animation: fade 2.0s ease-in-out 150.0ms 2 alternate both running"

        #expect(result == expectation)
    }
}
