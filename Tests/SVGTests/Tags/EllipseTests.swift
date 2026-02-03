//
//  EllipseTests.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Testing

@testable import SVG

@Suite
struct EllipseTests {

    private func render(_ tag: Ellipse) -> String {
        let renderer = Renderer()
        let doc = Document(root: tag)
        return renderer.render(document: doc)
    }

    @Test("ellipse renders precise numeric attributes")
    func ellipsePreciseValues() {
        let result = render(
            Ellipse(cx: 10.0, cy: 20.75, rx: 30.0, ry: 40.125)
        )

        let expectation = #"""
            <ellipse cx="10" cy="20.75" rx="30" ry="40.125"></ellipse>
            """#

        #expect(result == expectation)
    }

    @Test("ellipse includes pathLength when provided")
    func ellipseWithPathLength() {
        let result = render(
            Ellipse(cx: 1, cy: 2, rx: 3, ry: 4, pathLength: 12.0)
        )

        let expectation = #"""
            <ellipse cx="1" cy="2" rx="3" ry="4" pathLength="12"></ellipse>
            """#

        #expect(result == expectation)
    }
}
