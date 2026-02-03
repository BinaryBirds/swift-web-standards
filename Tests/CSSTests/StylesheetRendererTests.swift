//
//  StylesheetRendererTests.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct StylesheetRendererTests {

    @Test
    func minifiedStylesheet() {
        let css = Stylesheet {
            Media {
                Class("badge") {
                    Padding(horizontal: 6.px, vertical: 2.px)
                    BackgroundColor(.red)
                }
            }
        }

        let rendered = StylesheetRenderer(minify: true).render(css)
        let expectation = ".badge{padding:6px 2px;background-color:red}"

        #expect(rendered == expectation)
    }

    @Test
    func indentation() {
        let css = Stylesheet {
            Media {
                Element("span") {
                    Margin(4.px)
                }
            }
        }

        let rendered = StylesheetRenderer(indent: 2).render(css)
        let expectation = "span {\n  margin: 4px;\n}"

        #expect(rendered == expectation)
    }
}
