//
//  FractionTests.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 25.

import Testing

@testable import CSS

@Suite
struct FractionTests {

    @Test
    func behavior() {
        #expect(1.fr.rawValue == "1fr")
        #expect(2.5.fr.rawValue == "2.5fr")
    }
}
