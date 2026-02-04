//
//  ShadowRootModeAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct ShadowRootModeAttributeTestSuite {

    @Test
    func rendersShadowRootModeValues() async throws {
        let cases: [(ShadowRootModeAttributeValue, String)] = [
            (.open, "open"),
            (.closed, "closed"),
        ]

        for (value, raw) in cases {
            let tag = Template("content")
                .shadowRootMode(value)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation = #"""
                <template shadowrootmode="\#(raw)">content</template>
                """#

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
