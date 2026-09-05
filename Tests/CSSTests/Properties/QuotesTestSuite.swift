//
//  QuotesTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct QuotesTests {

    @Test
    func initializers() {
        let property = Quotes(.inherit)

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Quotes(.inherit)
            .important()

        let renderer = CSSRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let none = Quotes(.none)
        let marks = Quotes("<", ">", "[", "]")
        let initial = Quotes(.initial)

        let renderer = CSSRenderer()
        #expect(renderer.renderProperty(none) == "quotes: none")
        #expect(renderer.renderProperty(marks) == "quotes: < > [ ]")
        #expect(renderer.renderProperty(initial) == "quotes: initial")
    }
}
