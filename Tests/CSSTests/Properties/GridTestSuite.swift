//
//  GridTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct GridTests {

    @Test
    func initializers() {
        let property = Grid()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Grid()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let property = Grid(
            .length(200.px),
            .length(1.percent),
            .names(["header", "content"]),
            .length(50.px),
            .length(25.px),
            .rowDense
        )

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        #expect(
            result
                == "grid: 200px/1% 'header' 'content' 50px 25px row dense"
        )
    }
}
