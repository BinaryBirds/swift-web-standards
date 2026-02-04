//
//  AsideTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct AsideTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Aside {
            Text("Lorem ipsum.")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <aside>Lorem ipsum.</aside>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
