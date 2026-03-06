//
//  WebStandardsTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import CSS
import DOM
import HTML
import SGML
import Testing

@testable import WebStandards

@Suite
struct WebStandardsTestSuite {

    @Test
    func camelToHyphensConvertsEdgeCases() {
        #expect(camelToHyphens("") == "")
        #expect(camelToHyphens("simpleTest") == "simple-test")
        #expect(camelToHyphens("userID") == "user-id")
        #expect(camelToHyphens("HTTPRequest") == "http-request")
        #expect(camelToHyphens("model3DAsset") == "model3-d-asset")
    }

    @Test
    func componentDefaultsWithoutPropertiesProduceNoSelectorsOrRules() {
        let component = NoStyleComponent()

        #expect(component.identifier == "NoStyleComponent")
        #expect(component.className == "no-style-component")
        #expect(component.properties().isEmpty)
        #expect(component.selectors().isEmpty)
        #expect(component.rules().isEmpty)
    }

    @Test
    func globalStyleDefaultsUseGeneratedClassName() {
        #expect(GlobalPositionStyle.className == "global-position-style")

        let css = StylesheetRenderer(minify: true)
            .render(
                Stylesheet(GlobalPositionStyle.rules())
            )

        #expect(css == ".global-position-style{position:relative}")
    }

    @Test
    func htmlBodyKeepsSingleChildWithoutClassInComponentGroupPath() {
        let component = StyledParagraphComponent(text: "Hello")
        let body = component.htmlBody()

        #expect(body.getAttribute(name: "class") == nil)
    }

    @Test
    func htmlBodyDoesNotAddClassWhenComponentHasNoProperties() {
        let component = NoStyleComponent()
        let body = component.htmlBody()

        #expect(body.getAttribute(name: "class") == nil)
    }

    @Test
    func htmlBodyAddsClassToEachChildWhenContentIsGroup() throws {
        let component = StyledGroupComponent()
        let body = component.htmlBody()
        guard let group = body as? ComponentGroup else {
            Issue.record("Expected ComponentGroup from multi-node content.")
            return
        }

        #expect(group.children.count == 2)
        for child in group.children {
            guard let tag = child as? any BasicTag else {
                Issue.record("Expected BasicTag child in ComponentGroup.")
                continue
            }
            #expect(tag.getAttribute(name: "class") == component.className)
        }
    }

    @Test
    func componentGroupNodeRendersSingleAndMultipleChildren() {
        let one = ComponentGroup([Span("one")])
        let many = ComponentGroup([Span("one"), Span("two")])

        let oneRendered = SGML.Renderer()
            .render(
                document: Document(root: one)
            )
        let manyRendered = SGML.Renderer()
            .render(
                document: Document(root: many)
            )

        #expect(!(one.node is ListNode))
        #expect(many.node is ListNode)
        #expect(oneRendered == "<span>one</span>")
        #expect(manyRendered == "<span>one</span><span>two</span>")
    }

    @Test
    func componentContentBuilderSupportsCoreBuilderOperations() {
        let a = ComponentContentBuilder.buildExpression(Span("a"))
        let b = ComponentContentBuilder.buildExpression(Span("b"))
        let nestedGroup = ComponentContentBuilder.buildExpression(
            ComponentGroup([Span("x"), Span("y")])
        )
        let combined = ComponentContentBuilder.buildBlock(a, b, nestedGroup)
        let optionalNone = ComponentContentBuilder.buildOptional(nil)
        let optionalSome = ComponentContentBuilder.buildOptional(a)
        let eitherFirst = ComponentContentBuilder.buildEither(first: a)
        let eitherSecond = ComponentContentBuilder.buildEither(second: b)
        let array = ComponentContentBuilder.buildArray([a, b])
        let availability = ComponentContentBuilder.buildLimitedAvailability(a)
        let final = ComponentContentBuilder.buildFinalResult(combined)

        #expect(a.count == 1)
        #expect(nestedGroup.count == 2)
        #expect(combined.count == 4)
        #expect(optionalNone.isEmpty)
        #expect(optionalSome.count == 1)
        #expect(eitherFirst.count == 1)
        #expect(eitherSecond.count == 1)
        #expect(array.count == 2)
        #expect(availability.count == 1)
        #expect(final.children.count == 4)
    }

    @Test
    func globalStylesheetCollectorDeduplicatesAndPreservesRegistrationOrder() {
        var collector = GlobalStylesheetCollector()
        collector.register(GlobalAbsoluteStyle.self)
        collector.register(GlobalPositionStyle.self)
        collector.register(GlobalAbsoluteStyle.self)

        let rendered = StylesheetRenderer(minify: true)
            .render(
                collector.getGlobalStylesheet()
            )

        #expect(
            rendered
                == ".global-absolute-style{position:absolute}.global-position-style{position:relative}"
        )
    }

    @Test
    func
        componentStylesheetCollectorCollectsNestedComponentsOnceInTraversalOrder()
        throws
    {
        let root = Div {
            StyledParentComponent()
            StyledLeafComponent()
        }

        let collector = ComponentStylesheetCollector()
        let rendered = StylesheetRenderer(minify: true)
            .render(
                collector.getStylesheet(from: root)
            )
        #expect(
            rendered
                == ".styled-parent-component{position:relative}.styled-leaf-component{margin:0 0 1px 0}"
        )
    }

    @Test
    func
        componentStylesheetCollectorIncludesNestedComponentsFromRootWithoutOwnRules()
    {
        let collector = ComponentStylesheetCollector()
        let rendered = StylesheetRenderer(minify: true)
            .render(
                collector.getStylesheet(from: NoStyleParentComponent())
            )

        #expect(rendered == ".styled-leaf-component{margin:0 0 1px 0}")
    }
}

private struct NoStyleComponent: Component, FlowContent {
    func content() -> some BasicTag {
        P("no-style")
    }
}

private struct StyledParagraphComponent: Component, FlowContent {
    let text: String

    func properties() -> [any CSS.Property] {
        Position(.relative)
    }

    func content() -> some BasicTag {
        P(text)
    }
}

private struct StyledGroupComponent: Component, FlowContent {
    func properties() -> [any CSS.Property] {
        Position(.relative)
    }

    func content() -> some BasicTag {
        P("first")
        Span("second")
    }
}

private struct StyledLeafComponent: Component, FlowContent {
    func properties() -> [any CSS.Property] {
        Margin(bottom: 1.px)
    }

    func content() -> some BasicTag {
        Span("leaf")
    }
}

private struct StyledParentComponent: Component, FlowContent {
    func properties() -> [any CSS.Property] {
        Position(.relative)
    }

    func content() -> some BasicTag {
        Div {
            StyledLeafComponent()
            StyledLeafComponent()
        }
    }
}

private struct NoStyleParentComponent: Component, FlowContent {
    func content() -> some BasicTag {
        Div {
            StyledLeafComponent()
        }
    }
}

private struct GlobalPositionStyle: GlobalStyleComponent {
    static func properties() -> [any CSS.Property] {
        Position(.relative)
    }
}

private struct GlobalAbsoluteStyle: GlobalStyleComponent {
    static func properties() -> [any CSS.Property] {
        Position(.absolute)
    }
}
