//
//  FontFaceTests.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct FontFaceTests {

    @Test
    func behavior() {
        let css = Stylesheet {
            FontFace {
                FontFamily(.family("Inter"))
            }
        }

        let rendered = StylesheetRenderer().render(css)
        let expectation = "@font-face {\nfont-family: Inter\n}"

        #expect(rendered == expectation)
    }

    @Test
    func minified() {
        let css = Stylesheet {
            FontFace {
                FontFamily(.family("Inter"))
                FontWeight(.bold)
            }
        }

        let rendered = StylesheetRenderer(minify: true).render(css)
        let expectation = "@font-face {font-family:Interfont-weight:bold}"

        #expect(rendered == expectation)
    }
}
