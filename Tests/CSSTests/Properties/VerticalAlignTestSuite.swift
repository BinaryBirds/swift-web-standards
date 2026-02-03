//
//  VerticalAlignTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct VerticalAlignTests {

    @Test
    func initializers() {
        let property = VerticalAlign()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = VerticalAlign()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let keyword = VerticalAlign(.super)
        let length = VerticalAlign(6.px)
        let middle = VerticalAlign(.middle)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(keyword) == "vertical-align: super")
        #expect(renderer.renderProperty(length) == "vertical-align: 6px")
        #expect(renderer.renderProperty(middle) == "vertical-align: middle")
    }
}
