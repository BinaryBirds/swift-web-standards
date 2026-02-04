//
//  ShadowRootDelegatesFocusAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct ShadowRootDelegatesFocusAttributeTestSuite {

    @Test
    func rendersShadowRootDelegatesFocusValue() async throws {
        let tag = Template {}
            .shadowRootDelegatesFocus("value")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <template shadowrootdelegatesfocus="value"></template>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
