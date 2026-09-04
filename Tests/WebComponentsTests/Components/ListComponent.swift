import CSS
import HTML
import SGML
import Utils
import WebComponents

struct ListComponent: Component {
    func selectors() -> [any Selector] {
        Class("list-component") { Color(.green) }
    }

    var body: [any Component] { ListItemComponent() }

    func renderHTML(children: [any Element]) -> any Element {
        Div { for child in children { child } }.class("list-component")
    }
}
