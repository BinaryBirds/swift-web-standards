import HTML
import SGML
import Utils
import WebComponents

struct FooComponent: Component {
    let text: String

    func renderHTML(children: [any Element]) -> any Element {
        Span(text)
    }
}
