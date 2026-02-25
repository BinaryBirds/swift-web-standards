//
//  CSSColorTests.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct CSSColorTests {

    @Test
    func behavior() {
        let hex: CSSColor = "cafe00"
        #expect(hex.rawValue == "#cafe00")

        let short: CSSColor = "#fff"
        #expect(short.rawValue == "#fff")

        let hexOpacity: CSSColor = "#12345678"
        #expect(hexOpacity.rawValue == "#12345678")

        let rgb = CSSColor(r: 1, g: 2, b: 3)
        #expect(rgb.rawValue == "rgb(1,2,3)")

        let rgba = CSSColor(r: 1, g: 2, b: 3, a: 0.5)
        #expect(rgba.rawValue == "rgba(1,2,3, 0.5)")

        let hsl = CSSColor(h: 120, s: 50, l: 40)
        #expect(hsl.rawValue == "hsl(120,50,40)")

        let hsla = CSSColor(h: 10.0, s: 20.0, l: 30.0, a: 0.2)
        #expect(hsla.rawValue == "hsla(10.0%,20.0%,30.0%, 0.2)")

        #expect(CSSColor.aliceBlue.rawValue == "aliceblue")

        let percentRgb = CSSColor(r: 12.5, g: 50.0, b: 75.5)
        #expect(percentRgb.rawValue == "rgb(12.5%,50.0%,75.5%)")

        let variableColor = CSSColor.variable("my-color")
        #expect(variableColor.rawValue == "var(--my-color)")
    }
}
