//
//  ComponentStyleCollector.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 03. 06.

import CSS

public struct ComponentStyleCollector: Sendable {

    private struct State {
        var rulesByComponent: [String: [any CSS.Rule]] = [:]
        var componentOrder: [String] = []
        var collectedComponents: Set<String> = []
    }

    public init() {
        self.state = .init()
    }

    public mutating func register(
        _ component: any Component
    ) {
        collectLocalComponentRules(from: component, state: &state)
    }

    public func stylesheet() -> CSS.Stylesheet {
        let rules = state.componentOrder.flatMap {
            state.rulesByComponent[$0] ?? []
        }
        return CSS.Stylesheet(rules)
    }

    public func getStylesheet(
        from component: any Component
    ) -> CSS.Stylesheet {
        var collector = ComponentStyleCollector()
        collector.register(component)
        return collector.stylesheet()
    }

    private var state: State

    private func collectLocalComponentRules(
        from component: any Component,
        state: inout State
    ) {
        collectLocalRules(from: component, state: &state)
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
    }
}
