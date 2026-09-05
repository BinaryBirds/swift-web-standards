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
        let html = root.html()
        let result = SGMLRenderer().render(document: Document(root: html))

        #expect(result == "<div><span>Component subtree</span></div>")
    }

    @Test
    func componentTreeCollectorsTraverseComponentsDirectly() {
        let root = ListComponent()

        let css = CSSRenderer(minify: true)
            .render(ComponentStyleCollector().getStylesheet(from: root))
        let javascript = ComponentScriptCollector().getScript(from: root)

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
        let root = ScriptedParentComponent()

        let javascript = ComponentScriptCollector()
            .getJavaScript(from: root)

        #expect(
            javascript
                == "window.parentReady = true;\nwindow.leafReady = true;"
        )
    }

    @Test
    func componentBuilderSupportsGroupsAndConditionals() {
        let group = ComponentGroup([FooComponent(text: "one")])
        let component = BuilderComponent(includeGroup: true, group: group)

        #expect(component.children.count == 2)
    }

}

private struct ScriptedParentComponent: Branch {
    private let leaves = [ScriptedLeafComponent(), ScriptedLeafComponent()]
    @Builder<String>
    func scripts() -> [String] {
        "window.parentReady = true;"
    }

    var children: [any Component] {
        leaves
    }

    func html() -> Div {
        Div {
            for leaf in leaves {
                leaf.html()
            }
        }
    }
}

private struct ScriptOnlyComponent: Component {
    @Builder<String>
    func scripts() -> [String] {
        "window.analyticsReady = true;"
    }
}

private struct ScriptedLeafComponent: Leaf {
    @Builder<String>
    func scripts() -> [String] { "window.leafReady = true;" }

    func html() -> P { P("leaf") }
}

private struct BuilderComponent: Branch {
    let includeGroup: Bool
    let group: ComponentGroup

    @Builder<any Component>
    var children: [any Component] {
        FooComponent(text: "first")
        if includeGroup { group }
    }

    func html() -> Div {
        Div {
            for component in children {
                if let renderable = component as? any Renderable {
                    renderable.html()
                }
            }
        }
    }
}
