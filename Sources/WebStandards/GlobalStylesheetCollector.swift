import CSS

public struct GlobalStylesheetCollector {

    private var rulesByComponent: [String: [any CSS.Rule]]
    private var componentOrder: [String]

    public init() {
        self.rulesByComponent = [:]
        self.componentOrder = []
    }

    public mutating func register<T: GlobalStyleComponent>(
        _ component: T.Type
    ) {
        let identifier = String(describing: component)
        guard rulesByComponent[identifier] == nil else {
            return
        }
        rulesByComponent[identifier] = component.rules()
        componentOrder.append(identifier)
    }

    public func getGlobalStylesheet() -> CSS.Stylesheet {
        let rules = componentOrder.flatMap {
            rulesByComponent[$0] ?? []
        }
        return CSS.Stylesheet(rules)
    }
}
