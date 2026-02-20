//
//  ZIndexTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.
//

import Testing

@testable import CSS

@Suite
struct ZIndexTests {

    @Test
    func defaultInitializer() {
        let property = ZIndex()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func integerValue() {
        let property = ZIndex(.number(10))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        #expect(result == "z-index: 10")
    }

    @Test
    func zeroValue() {
        let property = ZIndex(.number(0))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        #expect(result == "z-index: 0")
    }

    @Test
    func negativeValue() {
        let property = ZIndex(.number(-5))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        #expect(result == "z-index: -5")
    }

    @Test
    func important() {
        let property = ZIndex(.number(100))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        #expect(result == "z-index: 100 !important")
    }
}
