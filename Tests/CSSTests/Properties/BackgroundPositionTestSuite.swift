//
//  BackgroundPositionTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct BackgroundPositionTests {

    @Test
    func initializers() {
        let property = BackgroundPosition(.initial)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BackgroundPosition(.initial)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let keyword = BackgroundPosition(.leftBottom)
        let percent = BackgroundPosition(.percent(10, 90))
        let position = BackgroundPosition(.position(12.px, 24.px))
        let centerTop = BackgroundPosition(.centerTop)
        let percentDefault = BackgroundPosition(.percent(25, nil))
        let positionDefault = BackgroundPosition(.position(10.px, nil))
        let rightCenter = BackgroundPosition(.rightCenter)

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderProperty(keyword)
                == "background-position: left bottom"
        )
        #expect(
            renderer.renderProperty(percent)
                == "background-position: 10.0% 90.0%"
        )
        #expect(
            renderer.renderProperty(position)
                == "background-position: 12px 24px"
        )
        #expect(
            renderer.renderProperty(centerTop)
                == "background-position: center top"
        )
        #expect(
            renderer.renderProperty(percentDefault)
                == "background-position: 25.0% 50.0%"
        )
        #expect(
            renderer.renderProperty(positionDefault)
                == "background-position: 10px 50%"
        )
        #expect(
            renderer.renderProperty(rightCenter)
                == "background-position: right center"
        )
    }
}
