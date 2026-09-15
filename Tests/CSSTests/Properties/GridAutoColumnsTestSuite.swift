//
//  GridAutoColumnsTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct GridAutoColumnsTests {

    @Test
    func initializers() {
        let property = GridAutoColumns()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = GridAutoColumns()
            .important()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let length = GridAutoColumns(.length(150.px))
        let fraction = GridAutoColumns(.fraction(3.fr))
        let tracks = GridAutoColumns(
            .tracks([.length(150.px), .fraction(3.fr)])
        )

        let renderer = CSSRenderer()
        #expect(renderer.renderProperty(length) == "grid-auto-columns: 150px")
        #expect(renderer.renderProperty(fraction) == "grid-auto-columns: 3fr")
        #expect(
            renderer.renderProperty(tracks) == "grid-auto-columns: 150px 3fr"
        )
    }
}
