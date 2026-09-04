//
//  ComponentStylesheetCollector.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 03. 06.

import CSS

public struct ComponentStylesheetCollector: Sendable {

    private struct State {
        var rulesByComponent: [String: [any CSS.Rule]] = [:]
        var componentOrder: [String] = []
        var collectedComponents: Set<String> = []
    }

    public init() {

    }

    public func getStylesheet(
        from component: any Component
    ) -> CSS.Stylesheet {
        var state = State()
        collectLocalComponentRules(from: component, state: &state)
        let rules = state.componentOrder.flatMap {
            state.rulesByComponent[$0] ?? []
        }
        return CSS.Stylesheet(rules)
    }

    private func collectLocalComponentRules(
        from component: any Component,
        state: inout State
    ) {
        collectLocalRules(from: component, state: &state)
        for child in component.body {
            collectLocalComponentRules(from: child, state: &state)
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
    }
}
