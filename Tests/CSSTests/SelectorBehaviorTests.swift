import Testing

@testable import CSS

@Suite
struct SelectorBehaviorTests {

    @Test
    func behavior() {
        var selector = Custom("a") {
            Color("#cafe00")
        }
        selector.pseudo(.hover)

        let rendered = StylesheetRenderer().renderSelector(selector)
        let expectation = "a:hover {\n    color: #cafe00;\n}"

        #expect(rendered == expectation)
    }

    @Test
    func customSelectorProperties() {
        let selector = Custom(".card") {
            Width(200.px)
            Height(100.px)
        }

        #expect(selector.name == ".card")
        #expect(selector.properties.count == 2)
    }

    @Test
    func builtInSelectors() {
        let classSelector = Class("button") {
            Color(.red)
        }
        let idSelector = Id("hero") {
            BackgroundColor(.blue)
        }
        let elementSelector = Element("p") {
            Margin(8.px)
        }
        let universalSelector = Universal {
            Padding(4.px)
        }

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderSelector(classSelector)
                == ".button {\n    color: red;\n}"
        )
        #expect(
            renderer.renderSelector(idSelector)
                == "#hero {\n    background-color: blue;\n}"
        )
        #expect(
            renderer.renderSelector(elementSelector)
                == "p {\n    margin: 8px;\n}"
        )
        #expect(
            renderer.renderSelector(universalSelector)
                == "* {\n    padding: 4px;\n}"
        )
    }
}
