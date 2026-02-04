//
//  FormEncTypeAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct FormEncTypeAttributeTestSuite {

    @Test
    func rendersFormEncTypeValue() async throws {
        let tag = Button {}
            .formEncType(.multipart)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <button formenctype="multipart/form-data"></button>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
