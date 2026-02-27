//
//  GridAutoRowsTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import Testing

@testable import CSS

@Suite
struct GridAutoRowsTests {

    @Test
    func initializers() {
        let property = GridAutoRows()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = GridAutoRows()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let length = GridAutoRows(.length(80.px))
        let fraction = GridAutoRows(.fraction(1.5.fr))
        let tracks = GridAutoRows(.tracks([.length(80.px), .fraction(1.5.fr)]))

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(length) == "grid-auto-rows: 80px")
        #expect(renderer.renderProperty(fraction) == "grid-auto-rows: 1.5fr")
        #expect(renderer.renderProperty(tracks) == "grid-auto-rows: 80px 1.5fr")
    }
}
