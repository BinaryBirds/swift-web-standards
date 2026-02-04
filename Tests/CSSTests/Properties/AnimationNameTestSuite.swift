//
//  AnimationNameTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct AnimationNameTests {

    @Test
    func initializers() {
        let property = AnimationName()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = AnimationName()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let keyframe: AnimationName.Value = "fade"
        let none = AnimationName(.none)
        let inherit = AnimationName(.inherit)

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderProperty(AnimationName(keyframe))
                == "animation-name: fade"
        )
        #expect(renderer.renderProperty(none) == "animation-name: none")
        #expect(renderer.renderProperty(inherit) == "animation-name: inherit")
    }
}
