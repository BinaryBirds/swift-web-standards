import HTML
import SGML
import Utils
import WebComponents

struct PageComponent: Component {
    var body: [any Component] { FooComponent(text: "Component subtree") }

    func renderHTML(children: [any Element]) -> any Element {
        Div { for child in children { child } }
    }
}
