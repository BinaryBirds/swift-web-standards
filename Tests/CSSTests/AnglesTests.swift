//
//  AnglesTests.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 19.
//

import Testing

@testable import CSS

@Suite
struct AnglesTests {

    @Test
    func behavior() {
        #expect(180.deg.rawValue == "180deg")
        #expect(3.14.rad.rawValue == "3.14rad")
        #expect(200.grad.rawValue == "200grad")
        #expect(0.5.turn.rawValue == "0.5turn")

        #expect(Angle(value: 90, type: .deg).rawValue == "90deg")
        #expect(Angle(value: 1.25, type: .turn).rawValue == "1.25turn")
    }

    @Test
    func supportsIntAndDouble() {
        let intAngle = 45.deg
        let doubleAngle = 45.5.deg

        #expect(intAngle.rawValue == "45deg")
        #expect(doubleAngle.rawValue == "45.5deg")
    }
}
