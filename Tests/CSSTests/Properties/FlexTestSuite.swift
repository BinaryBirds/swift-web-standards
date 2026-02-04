//
//  FlexTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct FlexTests {

    @Test
    func initializers() {
        let property = Flex(.auto)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Flex(.auto)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let values = Flex(.values(.number(1), .number(0), .auto))
        let none = Flex(.none)
        let inherit = Flex(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(values) == "flex: 1 0 auto")
        #expect(renderer.renderProperty(none) == "flex: none")
        #expect(renderer.renderProperty(inherit) == "flex: inherit")
    }
}
