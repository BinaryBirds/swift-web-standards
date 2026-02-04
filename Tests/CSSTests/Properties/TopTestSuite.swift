//
//  TopTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct TopTests {

    @Test
    func initializers() {
        let property = Top()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Top()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let auto = Top(.auto)
        let length = Top(12.px)
        let inherit = Top(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(auto) == "top: auto")
        #expect(renderer.renderProperty(length) == "top: 12px")
        #expect(renderer.renderProperty(inherit) == "top: inherit")
    }
}
