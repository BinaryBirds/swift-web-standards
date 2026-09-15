//
//  CustomDocumentTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.

import CSS
import HTML
import SGML
import Testing
import WebBuilders

@testable import WebComponents

@Suite
struct CustomDocumentTestSuite {

    @Test
    func customHeadAndBodyComponentsRenderAnHTMLTree() {
        let comp = CustomDocumentComponent(
            state: .init(title: "Custom document")
        )
        var context = BuilderContext()
        let html = context.build(comp)
        let result = SGMLRenderer(indent: 4)
            .render(document: Document(root: html))

        #expect(
            result
                == #"""
                <html>
                    <head>
                        <title>Custom document</title>
                        <style>.custom-document{color:red}.custom-body{color:blue}</style>
                        <script>window.custom-document-ready = true;</script>
                        <script>window.custom-body-ready = true;</script>
                    </head>
                    <body>
                        <div class="custom-body">
                            <h1>Custom document</h1>
                        </div>
                    </body>
                </html>
                """#
        )
    }
}

private struct CustomDocumentComponent: Component {

    let state: CustomDocumentState
    private let head: CustomHeadComponent
    private let body: CustomBodyComponent<CustomBodyChildComponent>
    private let styles = CustomStyleComponent()

    init(state: CustomDocumentState) {
        self.state = state
        self.head = CustomHeadComponent(title: state.title)
        self.body = CustomBodyComponent(
            body: CustomBodyChildComponent(title: state.title)
        )
    }

    func html(context: inout BuilderContext) -> Html {
        context.register(styles)
        context.register(body)
        let bodyHTML = body.html(context: &context)
        let stylesheet = CSSRenderer(minify: true).render(context.stylesheet())
        let scripts = context.scripts()

        return Html(
            head: CustomHeadComponent(
                title: state.title,
                stylesheet: stylesheet,
                scripts: scripts
            )
            .html(context: &context),
            body: bodyHTML
        )
    }
}

private struct CustomDocumentState: Sendable {
    let title: String
}

private struct CustomStyleComponent: Component {

    func html(context: inout BuilderContext) -> InlineText {
        ""
    }

    @Builder<String>
    func scripts() -> [String] {
        "window.custom-document-ready = true;"
    }

    func selectors() -> [any CSS.Selector] {
        Class("custom-document") {
            Color(.red)
        }
    }
}

private struct CustomHeadComponent: Component {

    let title: String
    let stylesheet: String
    let scripts: [String]

    init(
        title: String,
        stylesheet: String = "",
        scripts: [String] = []
    ) {
        self.title = title
        self.stylesheet = stylesheet
        self.scripts = scripts
    }

    func html(context: inout BuilderContext) -> Head {
        Head {
            Title(title)

            if !stylesheet.isEmpty {
                Style(stylesheet)
            }

            for script in scripts {
                Script(script)
            }
        }
    }
}

private struct CustomBodyComponent<Content: Component>: Component {

    let body: Content

    func selectors() -> [any CSS.Selector] {
        Class("custom-body") {
            Color(.blue)
        }
    }

    func html(context: inout BuilderContext) -> Body {
        Body {
            Div {
                context.build(body)
            }
            .class("custom-body")
        }
    }
}

private struct CustomBodyChildComponent: Component {

    let title: String

    @Builder<String>
    func scripts() -> [String] {
        "window.custom-body-ready = true;"
    }

    func html(context: inout BuilderContext) -> H1 {
        H1(title)
    }
}
