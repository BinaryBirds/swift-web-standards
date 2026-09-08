//
//  VariableTestSupport.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 08.

@testable import CSS

struct TestVariableName: CSSVariableNameRepresentable {
    let rawValue: String

    init(_ rawValue: String) {
        self.rawValue = rawValue
    }
}
