//
//  CoordsAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Testing

@testable import HTML

@Suite
struct CoordsAttributeTestSuite {

    @Test
    func rendersCoordsValue() async throws {
        let tag = Area()
            .coords("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <area coords="value">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func rendersCoordsIntValues() async throws {
        let tag = Area()
            .coords(0, 10, 20, 30)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <area coords="0,10,20,30">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func rendersCoordsDoubleValues() async throws {
        let tag = Area()
            .coords([1.5, 2.25])

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <area coords="1.5,2.25">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func rendersCoordsFloatValues() async throws {
        let tag = Area()
            .coords(1.0 as Float, 2.5 as Float, 3.75 as Float)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <area coords="1.0,2.5,3.75">
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
