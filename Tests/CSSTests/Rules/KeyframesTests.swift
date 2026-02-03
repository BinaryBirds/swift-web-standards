//
//  KeyframesTests.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct KeyframesTests {

    @Test
    func behavior() {
        let css = Stylesheet {
            Keyframes("fade") {
                Custom("from") {
                    Opacity(0)
                }
                Custom("to") {
                    Opacity(1)
                }
            }
        }

        let rendered = StylesheetRenderer().render(css)
        let expectation =
            "@keyframes fade {\nfrom {\n    opacity: 0.0;\n}\nto {\n    opacity: 1.0;\n}\n}\n"

        #expect(rendered == expectation)
    }

    @Test
    func minified() {
        let css = Stylesheet {
            Keyframes("fade") {
                Custom("from") {
                    Opacity(0)
                }
                Custom("to") {
                    Opacity(1)
                }
            }
        }

        let rendered = StylesheetRenderer(minify: true).render(css)
        let expectation = "@keyframes fade{from{opacity:0.0}to{opacity:1.0}}"

        #expect(rendered == expectation)
    }
}
