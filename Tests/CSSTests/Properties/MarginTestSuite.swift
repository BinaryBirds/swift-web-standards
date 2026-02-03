//
//  MarginTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct MarginTests {

    @Test
    func initializers() {
        let property = Margin()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Margin()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let single = Margin(12.px)
        let axis = Margin(horizontal: 8.px, vertical: 16.px)
        let sides = Margin(top: 1.px, right: 2.px, bottom: 3.px, left: 4.px)
        let auto = Margin(.auto)
        let initial = Margin(.initial)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(single) == "margin: 12px")
        #expect(renderer.renderProperty(axis) == "margin: 8px 16px")
        #expect(renderer.renderProperty(sides) == "margin: 1px 2px 3px 4px")
        #expect(renderer.renderProperty(auto) == "margin: auto")
        #expect(renderer.renderProperty(initial) == "margin: initial")
    }
}
