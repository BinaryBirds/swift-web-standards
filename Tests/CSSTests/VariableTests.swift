//
//  VariableTests.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

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

        #expect("size".variable == "var(--size)")
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

        let rendered = StylesheetRenderer().render(css)
        let expectation = ":root {\n    --spacing: 12px;\n}"

        #expect(rendered == expectation)
    }
}
