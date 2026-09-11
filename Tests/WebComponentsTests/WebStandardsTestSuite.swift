//
//  WebStandardsTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import CSS
import DOM
import HTML
import SGML
import Testing
import WebBuilders

@testable import WebComponents

@Suite
struct WebComponentsTestSuite {

    @Test
    func componentTreeRendersAsHTML() {
        let root = PageComponent()
        var context = RenderContext()
        let html = context.render(root)
        let result = SGMLRenderer().render(document: Document(root: html))

        #expect(result == "<div><span>Component subtree</span></div>")
    }

    @Test
    func renderContextCollectsNestedComponents() {
        var context = RenderContext()
        _ = context.render(ListComponent())

        let css = CSSRenderer(minify: true).render(context.stylesheet())
        let javascript = context.javascript()

        #expect(css == ".list-component{color:green}.list-item{color:red}")
        #expect(javascript.isEmpty)
    }

    @Test
    func plainComponentsCanContributeJavaScriptWithoutHTML() {
        let component = ScriptOnlyComponent()

        #expect(
            ComponentScriptCollector().getJavaScript(from: component)
                == "window.analyticsReady = true;"
        )
    }

    @Test
    func componentTreeSupportsNestedComponentsAndDeduplication() {
        var context = RenderContext()
        _ = context.render(ScriptedParentComponent())

        let javascript = context.javascript()

        #expect(
            javascript
                == "window.parentReady = true;\nwindow.leafReady = true;"
        )
    }

    @Test
    func componentBuilderSupportsGroupsAndConditionals() {
        let group = ComponentGroup([FooComponent(text: "one")])
        let component = BuilderComponent(includeGroup: true, group: group)

        var context = RenderContext()
        _ = context.render(component)
    }

}

private struct ScriptedParentComponent: Component {
    private let components = [ScriptedComponent(), ScriptedComponent()]
    @Builder<String>
    func scripts() -> [String] {
        "window.parentReady = true;"
    }

    func html(context: inout RenderContext) -> Div {
        Div {
            for component in components {
                context.render(component)
            }
        }
    }
}

private struct ScriptOnlyComponent: Component {
    @Builder<String>
    func scripts() -> [String] {
        "window.analyticsReady = true;"
    }

    func html(context: inout RenderContext) -> SGML.InlineText {
        ""
    }
}

private struct ScriptedComponent: Component {
    @Builder<String>
    func scripts() -> [String] { "window.leafReady = true;" }

    func html(context: inout RenderContext) -> P { P("leaf") }
}

private struct BuilderComponent: Component {
    let includeGroup: Bool
    let group: ComponentGroup

    func html(context: inout RenderContext) -> Div {
        Div {
            context.render(FooComponent(text: "first"))
            if includeGroup {
                for component in group.children {
                    context.render(component)
                }
            }
        }
    }
}
