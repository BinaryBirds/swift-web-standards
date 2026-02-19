//
//  BackgroundImageTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import Testing

@testable import CSS

@Suite
struct BackgroundImageTests {

    @Test
    func initializers() {
        let property = BackgroundImage(.initial)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BackgroundImage(.initial)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    // MARK: - Linear gradient

    @Test
    func linearGradient_angleWithStops() {
        let gradient = LinearGradient(
            direction: .angle(180),
            stops: [
                .init("0A9AA5", 15.percent),
                .init("068892", 55.percent),
                .init("046C74", 90.percent),
            ]
        )

        let property = BackgroundImage(.linearGradient(gradient))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation =
            "background-image: linear-gradient(180deg, #0A9AA5 15%, #068892 55%, #046C74 90%)"

        #expect(result == expectation)
    }

    @Test
    func linearGradient_toCornerWithStops() {
        let gradient = LinearGradient(
            direction: .to(.corner(.bottom, .right)),
            stops: [
                .init("0A9AA5", 15.percent),
                .init("068892", 55.percent),
                .init("046C74", 90.percent),
            ]
        )

        let property = BackgroundImage(.linearGradient(gradient))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation =
            "background-image: linear-gradient(to bottom right, #0A9AA5 15%, #068892 55%, #046C74 90%)"

        #expect(result == expectation)
    }

    @Test
    func linearGradient_withoutDirection() {
        let gradient = LinearGradient(
            direction: nil,
            stops: [
                .init("0A9AA5"),
                .init("068892"),
            ]
        )

        let property = BackgroundImage(.linearGradient(gradient))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation =
            "background-image: linear-gradient(#0A9AA5, #068892)"

        #expect(result == expectation)
    }

    @Test
    func linearGradient_hardStop_twoPositions() {
        let gradient = LinearGradient(
            direction: .angle(180),
            stops: [
                .init("0A9AA5", 15.percent, 20.percent),  // hard stop
                .init("046C74", 90.percent),
            ]
        )

        let property = BackgroundImage(.linearGradient(gradient))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation =
            "background-image: linear-gradient(180deg, #0A9AA5 15% 20%, #046C74 90%)"

        #expect(result == expectation)
    }
}
