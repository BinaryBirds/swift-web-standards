//
//  ComponentScriptCollector.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.
//

/// Collects JavaScript declared by components in a rendered component tree.
public struct ComponentScriptCollector: Sendable {

    private struct State {
        var scriptsByComponent: [String: [String]] = [:]
        var componentOrder: [String] = []
        var collectedComponents: Set<String> = []
    }

    public init() {}

    /// Returns the collected JavaScript in component traversal order.
    ///
    /// Each component type contributes its source once, even when it occurs
    /// multiple times in the tree.
    public func getScript(
        from component: any Component
    ) -> String {
        getScripts(from: component).joined(separator: "\n")
    }

    /// Returns each collected JavaScript source in component traversal order.
    ///
    /// Each component type contributes its source once, even when it occurs
    /// multiple times in the tree. The returned values can be rendered as
    /// separate `<script>` elements.
    public func getScripts(
        from component: any Component
    ) -> [String] {
        var state = State()
        collectLocalComponentScripts(from: component, state: &state)
        return state.componentOrder
            .flatMap { state.scriptsByComponent[$0] ?? [] }
    }

    /// Alias describing the returned source as JavaScript rather than an HTML
    /// script element.
    public func getJavaScript(
        from component: any Component
    ) -> String {
        getScript(from: component)
    }

    private func collectLocalComponentScripts(
        from component: any Component,
        state: inout State
    ) {
        collectLocalScripts(from: component, state: &state)
        if let container = component as? any Branch {
            for child in container.children {
                collectLocalComponentScripts(from: child, state: &state)
            }
        }
    }

    private func collectLocalScripts(
        from component: any Component,
        state: inout State
    ) {
        let identifier = component.identifier
        guard state.collectedComponents.insert(identifier).inserted else {
            return
        }
        state.scriptsByComponent[identifier] = component.scripts()
        state.componentOrder.append(identifier)
    }
}
