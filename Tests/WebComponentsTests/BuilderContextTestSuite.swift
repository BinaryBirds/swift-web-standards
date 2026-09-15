//
//  BuilderContextTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 11.

import CSS
import DOM
import HTML
import SGML
import Testing
import WebBuilders

@testable import WebComponents

@Suite
struct BuilderContextTestSuite {

    @Test
    func buildingRegistersStylesForTheBuiltComponent() {
        var context = BuilderContext()
        let html = context.build(ContextStyledComponent())
        let renderedHTML = SGMLRenderer()
            .render(
                document: Document(root: html)
            )
        let renderedCSS = CSSRenderer(minify: true)
            .render(context.stylesheet())

        #expect(renderedHTML == "<p class=\"context-styled-leaf\">Leaf</p>")
        #expect(renderedCSS == ".context-styled-leaf{color:purple}")
    }

    @Test
    func explicitRegistrationIncludesComponentsThatAreNotRendered() {
        var context = BuilderContext()
        context.register(ContextRegisteredComponent())
        let renderedCSS = CSSRenderer(minify: true)
            .render(context.stylesheet())

        #expect(renderedCSS == ".context-registered-leaf{color:orange}")
    }

    @Test
    func buildingDeduplicatesRepeatedComponents() {
        var context = BuilderContext()
        _ = context.build(ContextStyledComponent())
        _ = context.build(ContextStyledComponent())
        let renderedCSS = CSSRenderer(minify: true)
            .render(context.stylesheet())

        #expect(renderedCSS == ".context-styled-leaf{color:purple}")
    }
}

private struct ContextStyledComponent: Component {

    func selectors() -> [any Selector] {
        Class("context-styled-leaf") {
            Color(.purple)
        }
    }

    func html(context: inout BuilderContext) -> P {
        P("Leaf").class("context-styled-leaf")
    }
}

private struct ContextRegisteredComponent: Component {

    func selectors() -> [any Selector] {
        Class("context-registered-leaf") {
            Color(.orange)
        }
    }

    func html(context: inout BuilderContext) -> P {
        P("Registered")
    }
}
