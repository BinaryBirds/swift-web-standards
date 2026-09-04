//
//  PerspectiveTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct PerspectiveTests {

    @Test
    func initializers() {
        let property = Perspective(.length(8.px))

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Perspective(.length(8.px))
            .important()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let length = Perspective(.length(600.px))
        let none = Perspective(.none)
        let inherit = Perspective(.inherit)

        let renderer = CSSRenderer()
        #expect(renderer.renderProperty(length) == "perspective: 600px")
        #expect(renderer.renderProperty(none) == "perspective: none")
        #expect(renderer.renderProperty(inherit) == "perspective: inherit")
    }
}
