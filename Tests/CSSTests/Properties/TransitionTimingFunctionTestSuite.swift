//
//  TransitionTimingFunctionTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct TransitionTimingFunctionTests {

    @Test
    func initializers() {
        let property = TransitionTimingFunction()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = TransitionTimingFunction()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let steps = TransitionTimingFunction(.steps(4, 1))
        let cubic = TransitionTimingFunction(.cubicBezier(0.1, 0.2, 0.3, 0.4))
        let stepStart = TransitionTimingFunction(.stepStart)
        let stepEnd = TransitionTimingFunction(.stepEnd)

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderProperty(steps)
                == "transition-timing-function: steps(4,1)"
        )
        #expect(
            renderer.renderProperty(cubic)
                == "transition-timing-function: cubic-bezier(0.1,0.2,0.3,0.4)"
        )
        #expect(
            renderer.renderProperty(stepStart)
                == "transition-timing-function: step-start"
        )
        #expect(
            renderer.renderProperty(stepEnd)
                == "transition-timing-function: step-end"
        )
    }
}
