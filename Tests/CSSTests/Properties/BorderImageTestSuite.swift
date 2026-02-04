//
//  BorderImageTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct BorderImageTests {

    @Test
    func initializers() {
        let property = BorderImage(.inherit)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderImage(.inherit)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let property = BorderImage(
            source: .image("border.png"),
            slice: .number(30),
            width: .length(4.px),
            outset: .number(2.0),
            repeat: .round
        )

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        #expect(
            result
                == "border-image: url('border.png') 30 4px 2.0 round"
        )
    }
}
