//
//  RightTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct RightTests {

    @Test
    func initializers() {
        let property = Right()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Right()
            .important()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let auto = Right(.auto)
        let length = Right(24.px)
        let initial = Right(.initial)

        let renderer = CSSRenderer()
        #expect(renderer.renderProperty(auto) == "right: auto")
        #expect(renderer.renderProperty(length) == "right: 24px")
        #expect(renderer.renderProperty(initial) == "right: initial")
    }
}
