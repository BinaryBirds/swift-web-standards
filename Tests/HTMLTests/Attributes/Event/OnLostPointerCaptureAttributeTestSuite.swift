//
//  OnLostPointerCaptureAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnLostPointerCaptureAttributeTestSuite {

    @Test
    func rendersOnLostPointerCaptureValue() async throws {
        let tag = A {}
            .onLostPointerCapture("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onlostpointercapture="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
