//
//  GridTemplateRowsTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import Testing

@testable import CSS

@Suite
struct GridTemplateRowsTests {

    @Test
    func initializers() {
        let property = GridTemplateRows()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = GridTemplateRows()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let length = GridTemplateRows(.length(120.px))
        let fraction = GridTemplateRows(.fraction(2.fr))
        let tracks = GridTemplateRows(
            .tracks([.length(120.px), .fraction(2.fr)])
        )
        let repeatLength = GridTemplateRows(.repeat(3, .length(160.px)))
        let repeatFraction = GridTemplateRows(.repeat(3, .fraction(1.fr)))

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(length) == "grid-template-rows: 120px")
        #expect(renderer.renderProperty(fraction) == "grid-template-rows: 2fr")
        #expect(
            renderer.renderProperty(tracks) == "grid-template-rows: 120px 2fr"
        )
        #expect(
            renderer.renderProperty(repeatLength)
                == "grid-template-rows: repeat(3, 160px)"
        )
        #expect(
            renderer.renderProperty(repeatFraction)
                == "grid-template-rows: repeat(3, 1fr)"
        )
    }
}
