//
//  ContentTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct ContentTests {

    @Test
    func initializers() {
        let property = Content()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Content()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let normal = Content(.normal)
        let none = Content(.none)
        let string = Content(.string("hello"))
        let openQuote = Content(.openQuote)
        let closeQuote = Content(.closeQuote)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(normal) == "content: normal")
        #expect(renderer.renderProperty(none) == "content: none")
        #expect(renderer.renderProperty(string) == "content: hello")
        #expect(renderer.renderProperty(openQuote) == "content: open-quote")
        #expect(renderer.renderProperty(closeQuote) == "content: close-quote")
    }
}
