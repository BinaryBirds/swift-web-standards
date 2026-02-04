//
//  OnGotPointerCaptureAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnGotPointerCaptureAttributeTestSuite {

    @Test
    func rendersOnGotPointerCaptureValue() async throws {
        let tag = A {}
            .onGotPointerCapture("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a ongotpointercapture="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
