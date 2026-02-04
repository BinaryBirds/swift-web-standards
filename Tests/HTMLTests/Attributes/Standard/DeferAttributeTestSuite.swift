//
//  DeferAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct DeferAttributeTestSuite {

    @Test
    func rendersDeferValue() async throws {
        let tag = Script("content")
            .`defer`()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <script defer>content</script>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
