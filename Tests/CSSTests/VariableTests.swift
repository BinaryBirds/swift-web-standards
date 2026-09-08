//
//  VariableTests.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing
import WebBuilders

@testable import CSS

@Suite
struct VariableTests {

    @Test
    func behavior() {
        let variable = Variable("size", "400px")
        #expect(variable.name == "--size")
        #expect(variable.value == "400px")
        #expect(variable.isImportant == false)

        let importantVariable = variable.important()
        #expect(importantVariable.isImportant == true)
        #expect(importantVariable.name == "--size")
        #expect(importantVariable.value == "400px")

    }

    @Test
    func variableReference() {
        let reference = CSSVariableReference("size")
        #expect(reference.name == "size")
        #expect(reference.rawValue == "var(--size)")
    }

    @Test
    func renderInSelector() {
        let css = Stylesheet {
            Media {
                Root {
                    Variable("spacing", "12px")
                }
            }
        }

        let rendered = CSSRenderer().render(css)
        let expectation = #"""
            :root {
                --spacing: 12px;
            }
            """#

        #expect(rendered == expectation)
    }

    @Test
    func variableUsage() {
        let css = Stylesheet {
            Media {
                Root {
                    Variable("red-color", "#f00")
                }
                Custom("div") {
                    BackgroundColor(.variable("red-color"))
                    Border(1.px, .solid, .variable("red-color"))
                }
            }
        }

        let rendered = CSSRenderer().render(css)
        let expectation = #"""
            :root {
                --red-color: #f00;
            }
            div {
                background-color: var(--red-color);
                border: 1px solid var(--red-color);
            }
            """#

        #expect(rendered == expectation)
    }
}
