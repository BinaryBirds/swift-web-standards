//
//  FontWeightTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.
//

import Testing

@testable import CSS

@Suite
struct FontWeightTests {

    @Test
    func initializers() {
        let property = FontWeight(.initial)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func keywordValues() {
        let renderer = StylesheetRenderer()

        #expect(
            renderer.renderProperty(FontWeight(.normal))
                == "font-weight: normal"
        )
        #expect(
            renderer.renderProperty(FontWeight(.bold)) == "font-weight: bold"
        )
        #expect(
            renderer.renderProperty(FontWeight(.bolder))
                == "font-weight: bolder"
        )
        #expect(
            renderer.renderProperty(FontWeight(.lighter))
                == "font-weight: lighter"
        )
    }

    @Test
    func numericPresets() {
        let renderer = StylesheetRenderer()

        #expect(
            renderer.renderProperty(FontWeight(.w100)) == "font-weight: 100"
        )
        #expect(
            renderer.renderProperty(FontWeight(.w400)) == "font-weight: 400"
        )
        #expect(
            renderer.renderProperty(FontWeight(.w700)) == "font-weight: 700"
        )
        #expect(
            renderer.renderProperty(FontWeight(.w900)) == "font-weight: 900"
        )
    }

    @Test
    func numericValue() {
        let renderer = StylesheetRenderer()

        #expect(
            renderer.renderProperty(FontWeight(.number(550)))
                == "font-weight: 550"
        )
        #expect(
            renderer.renderProperty(FontWeight(.number(400)))
                == "font-weight: 400"
        )
    }

    @Test
    func numericInitializer() {
        let renderer = StylesheetRenderer()

        // If you added `public init(_ value: Int)` this should compile and pass.
        #expect(renderer.renderProperty(FontWeight(700)) == "font-weight: 700")
    }

    @Test
    func important() {
        let property = FontWeight(.initial)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func importantWithNumericValue() {
        let renderer = StylesheetRenderer()

        let property = FontWeight(.w400)
            .important()

        #expect(
            renderer.renderProperty(property) == "font-weight: 400 !important"
        )
    }
}
