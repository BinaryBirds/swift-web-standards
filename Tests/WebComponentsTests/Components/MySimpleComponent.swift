import CSS
import HTML
import SGML
import Utils
import WebComponents

struct MySimpleComponent: Component {
    let text: String

    func selectors() -> [any Selector] {
        Class("my-simple-component") {
            Background(color: .red)
            Color(.cyan)
        }
    }

    func renderHTML(children: [any Element]) -> any Element {
        Div {
            P(text)
            Span("foobarbaz")
        }
        .class("my-simple-component")
    }
}
