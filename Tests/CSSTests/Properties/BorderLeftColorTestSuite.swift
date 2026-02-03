//
//  BorderLeftColorTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct BorderLeftColorTests {

    @Test
    func initializers() {
        let property = BorderLeftColor(.color(.red))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderLeftColor(.color(.red))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let transparent = BorderLeftColor(.transparent)
        let named = BorderLeftColor(.green)
        let initial = BorderLeftColor(.initial)

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderProperty(transparent)
                == "border-left-color: transparent"
        )
        #expect(renderer.renderProperty(named) == "border-left-color: green")
        #expect(
            renderer.renderProperty(initial) == "border-left-color: initial"
        )
    }
}
