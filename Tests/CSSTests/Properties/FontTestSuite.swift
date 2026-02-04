//
//  FontTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct FontTests {

    @Test
    func initializers() {
        let property = Font(
            style: .italic,
            variant: .smallCaps,
            weight: .bold,
            size: .length(16.px),
            lineHeight: .number(1.5),
            family: .family("Inter")
        )

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Font(
            style: .italic,
            variant: .smallCaps,
            weight: .bold,
            size: .length(16.px),
            lineHeight: .number(1.5),
            family: .family("Inter")
        )
        .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func keywordValues() {
        let property = Font(.caption)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        #expect(result == "font: caption")
    }
}
