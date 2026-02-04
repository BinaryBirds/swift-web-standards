//
//  TransitionPropertyTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct TransitionPropertyTests {

    @Test
    func initializers() {
        let property = TransitionProperty()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = TransitionProperty()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let none = TransitionProperty(.none)
        let list = TransitionProperty(["opacity", "transform"])
        let inherit = TransitionProperty(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(none) == "transition-property: none")
        #expect(
            renderer.renderProperty(list)
                == "transition-property: opacity,transform"
        )
        #expect(
            renderer.renderProperty(inherit) == "transition-property: inherit"
        )
    }
}
