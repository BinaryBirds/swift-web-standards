//
//  OnAfterPrintAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnAfterPrintAttributeTestSuite {

    @Test
    func rendersOnAfterPrintValue() async throws {
        let tag = A {}
            .onAfterPrint("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onafterprint="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
