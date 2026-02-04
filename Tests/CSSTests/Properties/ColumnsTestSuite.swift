//
//  ColumnsTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct ColumnsTests {

    @Test
    func initializers() {
        let property = Columns()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Columns()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let values = Columns(.length(240.px), 3)
        let initial = Columns(.initial)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(values) == "columns: 240px 3")
        #expect(renderer.renderProperty(initial) == "columns: initial")
    }
}
