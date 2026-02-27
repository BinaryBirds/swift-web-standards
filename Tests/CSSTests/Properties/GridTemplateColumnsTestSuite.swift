//
//  GridTemplateColumnsTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import Testing

@testable import CSS

@Suite
struct GridTemplateColumnsTests {

    @Test
    func initializers() {
        let property = GridTemplateColumns()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = GridTemplateColumns()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let length = GridTemplateColumns(.length(320.px))
        let fraction = GridTemplateColumns(.fraction(1.fr))
        let repeatLength = GridTemplateColumns(.repeat(3, .length(160.px)))
        let repeatFraction = GridTemplateColumns(.repeat(3, .fraction(1.fr)))

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderProperty(length) == "grid-template-columns: 320px"
        )
        #expect(
            renderer.renderProperty(fraction) == "grid-template-columns: 1fr"
        )
        #expect(
            renderer.renderProperty(repeatLength)
                == "grid-template-columns: repeat(3, 160px)"
        )
        #expect(
            renderer.renderProperty(repeatFraction)
                == "grid-template-columns: repeat(3, 1fr)"
        )
    }
}
