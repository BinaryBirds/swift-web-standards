//
//  BorderRadiusTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct BorderRadiusTests {

    @Test
    func initializers() {
        let property = BorderRadius(.initial)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderRadius(.initial)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let property = BorderRadius(.length(4.px, 6.px, 8.px, 10.px))
        let single = BorderRadius(.length(12.px, nil, nil, nil))

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderProperty(property)
                == "border-radius: 4px 6px 8px 10px"
        )
        #expect(renderer.renderProperty(single) == "border-radius: 12px")
    }
}
