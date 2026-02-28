//
//  TransformTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct TransformTests {

    @Test
    func initializers() {
        let property = Transform(.initial)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Transform(.initial)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let matrix = Transform(.matrix(1, 0, 0, 1, 10, 20))
        let rotate = Transform(.rotate(45.deg))
        let skew = Transform(.skew(10.deg, 20.deg))
        let translate = Transform(.translate(12.px, 24.px))
        let scale = Transform(.scale3d(1, 2, 3))
        let rotate3d = Transform(.rotate3d(1, 0, 0, 45.deg))
        let skewX = Transform(.skewX(15.deg))
        let perspective = Transform(.perspective(800.px))
        let matrix3d = Transform(
            .matrix3d(
                1,
                0,
                0,
                0,
                0,
                1,
                0,
                0,
                0,
                0,
                1,
                0,
                10,
                20,
                30,
                1
            )
        )

        let renderer = StylesheetRenderer()

        #expect(
            renderer.renderProperty(matrix)
                == "transform: matrix(1.0,0.0,0.0,1.0,10.0,20.0)"
        )
        #expect(renderer.renderProperty(rotate) == "transform: rotate(45deg)")
        #expect(
            renderer.renderProperty(skew) == "transform: skew(10deg,20deg)"
        )
        #expect(
            renderer.renderProperty(translate)
                == "transform: translate(12px,24px)"
        )
        #expect(
            renderer.renderProperty(scale) == "transform: scale3d(1.0,2.0,3.0)"
        )
        #expect(
            renderer.renderProperty(rotate3d)
                == "transform: rotate3d(1.0,0.0,0.0,45deg)"
        )
        #expect(renderer.renderProperty(skewX) == "transform: skewX(15deg)")
        #expect(
            renderer.renderProperty(perspective)
                == "transform: perspective(800px)"
        )
        #expect(
            renderer.renderProperty(matrix3d)
                == "transform: matrix3d(1.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,1.0,0.0,10.0,20.0,30.0,1.0)"
        )
    }
}
