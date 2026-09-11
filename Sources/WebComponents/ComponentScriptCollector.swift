//
//  ComponentScriptCollector.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 09. 04.
//

/// Collects JavaScript declared by components registered during rendering.
public struct ComponentScriptCollector: Sendable {

    private struct State {
        var scriptsByComponent: [String: [String]] = [:]
        var componentOrder: [String] = []
        var collectedComponents: Set<String> = []
    }

    private var state: State

    public init() {
        self.state = .init()
    }

    public mutating func register(
        _ component: any Component
    ) {
        collectLocalScripts(from: component, state: &state)
    }

    public func scripts() -> [String] {
        state.componentOrder
            .flatMap { state.scriptsByComponent[$0] ?? [] }
    }

    public func javascript() -> String {
        scripts().joined(separator: "\n")
    }

    /// Returns the collected JavaScript in registration order.
    ///
    /// Each component type contributes its source once, even when it occurs
    /// multiple times in the tree.
    public func getScript(
        from component: any Component
    ) -> String {
        getScripts(from: component).joined(separator: "\n")
    }

    /// Returns each collected JavaScript source in registration order.
    ///
    /// Each component type contributes its source once, even when it occurs
    /// multiple times in the tree. The returned values can be rendered as
    /// separate `<script>` elements.
    public func getScripts(
        from component: any Component
    ) -> [String] {
        var collector = ComponentScriptCollector()
        collector.register(component)
        return collector.scripts()
    }

    /// Alias describing the returned source as JavaScript rather than an HTML
    /// script element.
    public func getJavaScript(
        from component: any Component
    ) -> String {
        getScript(from: component)
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
