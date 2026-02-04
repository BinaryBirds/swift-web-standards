//
//  BoxShadowTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct BoxShadowTests {

    @Test
    func initializers() {
        let property = BoxShadow()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BoxShadow()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let property = BoxShadow(
            2.px,
            4.px,
            blur: 6.px,
            spread: 8.px,
            color: .black,
            type: .inset
        )

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        #expect(result == "box-shadow: 2px 4px 6px 8px black inset")
    }
}
