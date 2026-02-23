//
//  PaddingTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct PaddingTests {

    @Test
    func initializers() {
        let property = Padding()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Padding()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let single = Padding(12.px)
        let axis = Padding(vertical: 8.px, horizontal: 16.px)
        let sides = Padding(top: 1.px, right: 2.px, bottom: 3.px, left: 4.px)
        let inherit = Padding(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(single) == "padding: 12px")
        #expect(renderer.renderProperty(axis) == "padding: 8px 16px")
        #expect(renderer.renderProperty(sides) == "padding: 1px 2px 3px 4px")
        #expect(renderer.renderProperty(inherit) == "padding: inherit")
    }
}
