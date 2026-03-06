import CSS
import SGML

public struct ComponentStylesheetCollector {

    private struct State {
        var rulesByComponent: [String: [any CSS.Rule]] = [:]
        var componentOrder: [String] = []
        var collectedComponents: Set<String> = []
    }
    
    public init() {
        
    }

    public func getStylesheet(
        from element: any SGML.Element
    ) -> CSS.Stylesheet {
        var state = State()
        collectLocalComponentRules(from: element, state: &state)
        let rules = state.componentOrder.flatMap {
            state.rulesByComponent[$0] ?? []
        }
        return CSS.Stylesheet(rules)
    }

    private func collectLocalComponentRules(
        from element: any SGML.Element,
        state: inout State
    ) {
        if let component = element as? any Component {
            collectLocalRules(from: component, state: &state)
        }
        if let container = element as? any SGML.Container {
            for child in container.children {
                collectLocalComponentRules(from: child, state: &state)
            }
        }
    }

    private func collectLocalRules(
        from component: any Component,
        state: inout State
    ) {
        let identifier = component.identifier
        guard state.collectedComponents.insert(identifier).inserted else {
            return
        }
        state.rulesByComponent[identifier] = component.rules()
        state.componentOrder.append(identifier)
        collectLocalComponentRules(from: component.htmlBody(), state: &state)
    }
}
