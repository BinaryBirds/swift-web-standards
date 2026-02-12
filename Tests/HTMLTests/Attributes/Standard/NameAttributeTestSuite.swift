//
//  NameAttributeTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing

@testable import HTML

@Suite
struct NameAttributeTestSuite {

    @Test
    func rendersNameValues() async throws {
        let cases: [(Meta.NameAttributeValue, String)] = [
            (.applicationName, "application-name"),
            (.author, "author"),
            (.description, "description"),
            (.generator, "generator"),
            (.keywords, "keywords"),
            (.viewport, "viewport"),
            (.robots, "robots"),
            (.colorScheme, "color-scheme"),
            (.themeColor, "theme-color"),
            (.appleMobileWebAppTitle, "apple-mobile-web-app-title"),
            (.appleMobileWebAppCapable, "apple-mobile-web-app-capable"),
            (
                .appleMobileWebAppStatusBarStyle,
                "apple-mobile-web-app-status-bar-style"
            ),
        ]

        for (value, raw) in cases {
            let tag = Button {}
                .name(value.rawValue)

            let renderer = Renderer()
            let doc = Document(root: tag)

            let expectation: String
            if raw.isEmpty {
                expectation = #"""
                    <button name></button>
                    """#
            }
            else {
                expectation = #"""
                    <button name="\#(raw)"></button>
                    """#
            }

            let result = renderer.render(document: doc)
            #expect(result == expectation)
        }
    }
}
