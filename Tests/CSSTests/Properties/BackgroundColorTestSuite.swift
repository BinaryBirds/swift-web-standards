//
//  BackgroundColorTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct BackgroundColorTests {

    @Test
    func initializers() {
        let property = BackgroundColor()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BackgroundColor()
            .important()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let transparent = BackgroundColor(.transparent)
        let color = BackgroundColor(.hotPink)
        let initial = BackgroundColor(.initial)

        let renderer = CSSRenderer()
        #expect(
            renderer.renderProperty(transparent)
                == "background-color: transparent"
        )
        #expect(renderer.renderProperty(color) == "background-color: hotpink")
        #expect(renderer.renderProperty(initial) == "background-color: initial")
    }
}
