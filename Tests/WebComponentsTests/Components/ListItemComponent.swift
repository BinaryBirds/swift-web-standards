import CSS
import HTML
import SGML
import Utils
import WebComponents

struct ListItemComponent: Component {
    func selectors() -> [any Selector] { Class("list-item") { Color(.red) } }

    func renderHTML(children: [any Element]) -> any Element {
        P("List item").class("list-item")
    }
}
