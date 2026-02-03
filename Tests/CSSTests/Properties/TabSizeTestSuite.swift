//
//  TabSizeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct TabSizeTests {

    @Test
    func initializers() {
        let property = TabSize(.length(8.px))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = TabSize(.length(8.px))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let number = TabSize(4)
        let length = TabSize(2.em)
        let initial = TabSize(.initial)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(number) == "tab-size: 4")
        #expect(renderer.renderProperty(length) == "tab-size: 2em")
        #expect(renderer.renderProperty(initial) == "tab-size: initial")
    }
}
