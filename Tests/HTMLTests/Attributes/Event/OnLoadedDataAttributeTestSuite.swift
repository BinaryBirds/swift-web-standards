//
//  OnLoadedDataAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct OnLoadedDataAttributeTestSuite {

    @Test
    func rendersOnLoadedDataValue() async throws {
        let tag = A {}
            .onLoadedData("handler()")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <a onloadeddata="handler()"></a>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
