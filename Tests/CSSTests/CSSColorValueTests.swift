//
//  CSSColorValueTests.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct CSSColorValueTests {

    @Test
    func behavior() {
        #expect(CSSColorValue.transparent.rawValue == "transparent")
        #expect(CSSColorValue.initial.rawValue == "initial")
        #expect(CSSColorValue.inherit.rawValue == "inherit")
        #expect(CSSColorValue.color(.red).rawValue == "red")
    }
}
