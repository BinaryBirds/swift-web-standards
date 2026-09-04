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
import Utils

@testable import WebComponents

@Suite
struct WebComponentsTestSuite {

    @Test
    func componentTreeRendersAsHTML() {
        let root = PageComponent()
        let html = ComponentRenderer().render(root)
        let result = Renderer().render(document: Document(root: html))

        #expect(result == "<div><span>Component subtree</span></div>")
    }

    @Test
    func componentTreeCollectorsTraverseComponentsDirectly() {
        let root = ListComponent()

        let css = StylesheetRenderer(minify: true)
            .render(ComponentStylesheetCollector().getStylesheet(from: root))
        let javascript = ComponentJavaScriptCollector().getScript(from: root)

        #expect(css == ".list-component{color:green}.list-item{color:red}")
        #expect(javascript.isEmpty)
    }

    @Test
    func componentTreeSupportsNestedComponentsAndDeduplication() {
        let root = ScriptedParentComponent()

        let javascript = ComponentJavaScriptCollector()
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

        #expect(component.body.count == 2)
    }

    @Test
    func globalStylesheetCollectorDeduplicatesAndPreservesRegistrationOrder() {
        var collector = GlobalStylesheetCollector()
        collector.register(GlobalAbsoluteStyle.self)
        collector.register(GlobalPositionStyle.self)
        collector.register(GlobalAbsoluteStyle.self)

        let rendered = StylesheetRenderer(minify: true)
            .render(Stylesheet(collector.getGlobalStylesheet().rules))

        #expect(
            rendered
                == ".global-absolute-style{position:absolute}.global-position-style{position:relative}"
        )
    }
}

private struct ScriptedParentComponent: ContainerComponent {
    @Builder<String>
    func scripts() -> [String] {
        "window.parentReady = true;"
    }

    var body: [any Component] {
        ScriptedLeafComponent()
        ScriptedLeafComponent()
    }

    func renderHTML(children: [any Element]) -> any Element {
        Div { for child in children { child } }
    }
}

private struct ScriptedLeafComponent: LeafComponent {
    @Builder<String>
    func scripts() -> [String] { "window.leafReady = true;" }

    func renderHTML() -> any Element { P("leaf") }
}

private struct BuilderComponent: ContainerComponent {
    let includeGroup: Bool
    let group: ComponentGroup

    @Builder<any Component>
    var body: [any Component] {
        FooComponent(text: "first")
        if includeGroup { group }
    }

    func renderHTML(children: [any Element]) -> any Element {
        Div { for child in children { child } }
    }
}

private struct GlobalPositionStyle: GlobalStyleComponent {
    static func selectors() -> [any CSS.Selector] {
        Class("global-position-style") { Position(.relative) }
    }
}

private struct GlobalAbsoluteStyle: GlobalStyleComponent {
    static func selectors() -> [any CSS.Selector] {
        Class("global-absolute-style") { Position(.absolute) }
    }
}
