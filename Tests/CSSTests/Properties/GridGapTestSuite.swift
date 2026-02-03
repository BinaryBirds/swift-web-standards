//
//  GridGapTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct GridGapTests {

    @Test
    func initializers() {
        let property = GridGap(.length(0), .length(0))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = GridGap(.length(0), .length(0))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func unitValues() {
        let property = GridGap(12.px, 8.px)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        #expect(result == "grid-gap: 12px 8px")
    }
}
