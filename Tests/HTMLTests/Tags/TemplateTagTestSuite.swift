//
//  TemplateTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct TemplateTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Template("")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <template></template>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
