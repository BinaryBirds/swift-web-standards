//
//  BorderColorTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct BorderColorTests {

    @Test
    func initializers() {
        let property = BorderColor(.color(.red))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderColor(.color(.red))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let transparent = BorderColor(.transparent)
        let named = BorderColor(.blue)
        let inherit = BorderColor(.inherit)

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderProperty(transparent) == "border-color: transparent"
        )
        #expect(renderer.renderProperty(named) == "border-color: blue")
        #expect(renderer.renderProperty(inherit) == "border-color: inherit")
    }
}
