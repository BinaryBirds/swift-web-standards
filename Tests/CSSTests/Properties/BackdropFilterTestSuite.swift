//
//  BackdropFilterTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 25.

import Testing

@testable import CSS

@Suite
struct BackdropFilterTests {

    @Test
    func initializers() {
        let property = BackdropFilter()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BackdropFilter()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let blur = BackdropFilter(blur: 100.px)
        let blurRem = BackdropFilter(blur: 2.rem)
        let inherit = BackdropFilter(.inherit)

        let renderer = StylesheetRenderer()
        if let blur {
            #expect(
                renderer.renderProperty(blur)
                    == "backdrop-filter: blur(100px)"
            )
        }
        else {
            Issue.record(
                "Expected px unit to be accepted by BackdropFilter blur."
            )
        }

        if let blurRem {
            #expect(
                renderer.renderProperty(blurRem)
                    == "backdrop-filter: blur(2rem)"
            )
        }
        else {
            Issue.record(
                "Expected rem unit to be accepted by BackdropFilter blur."
            )
        }

        #expect(renderer.renderProperty(inherit) == "backdrop-filter: inherit")
    }

    @Test
    func unsupportedUnits() {
        let invalid = BackdropFilter(blur: 50.percent)

        #expect(invalid == nil)
    }
}
