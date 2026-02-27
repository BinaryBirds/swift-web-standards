//
//  GridAutoColumnsTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import Testing

@testable import CSS

@Suite
struct GridAutoColumnsTests {

    @Test
    func initializers() {
        let property = GridAutoColumns()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = GridAutoColumns()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let length = GridAutoColumns(.length(150.px))
        let fraction = GridAutoColumns(.fraction(3.fr))

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(length) == "grid-auto-columns: 150px")
        #expect(renderer.renderProperty(fraction) == "grid-auto-columns: 3fr")
    }
}
