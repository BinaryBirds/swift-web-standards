//
//  AnimationTimingFunctionTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct AnimationTimingFunctionTests {

    @Test
    func initializers() {
        let property = AnimationTimingFunction()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = AnimationTimingFunction()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let linear = AnimationTimingFunction(.linear)
        let ease = AnimationTimingFunction(.ease)
        let steps = AnimationTimingFunction(.steps(3, nil))
        let cubic = AnimationTimingFunction(.cubicBezier(0.2, 0.4, 0.6, 0.8))
        let inherit = AnimationTimingFunction(.inherit)

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderProperty(linear)
                == "animation-timing-function: linear"
        )
        #expect(
            renderer.renderProperty(ease) == "animation-timing-function: ease"
        )
        #expect(
            renderer.renderProperty(steps)
                == "animation-timing-function: steps(3)"
        )
        #expect(
            renderer.renderProperty(cubic)
                == "animation-timing-function: cubic-bezier(0.2,0.4,0.6,0.8)"
        )
        #expect(
            renderer.renderProperty(inherit)
                == "animation-timing-function: inherit"
        )
    }
}
