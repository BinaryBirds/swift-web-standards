//
//  BdiTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct BdiTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Bdi("hello")
            .dir(.ltr)

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <bdi dir="ltr">hello</bdi>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
