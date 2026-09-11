import CSS
import SGML

public struct RenderContext: Sendable {

    private var styleCollector: ComponentStyleCollector
    private var scriptCollector: ComponentScriptCollector

    public init(
    ) {
        self.styleCollector = .init()
        self.scriptCollector = .init()
    }

    public mutating func register(
        _ component: any Component
    ) {
        styleCollector.register(component)
        scriptCollector.register(component)
    }

    public mutating func render<T: Component>(
        _ component: T
    ) -> T.HTML {
        register(component)
        return component.html(context: &self)
    }

    public func stylesheet(
    ) -> CSS.Stylesheet {
        styleCollector.stylesheet()
    }

    public func scripts() -> [String] {
        scriptCollector.scripts()
    }

    public func javascript() -> String {
        scriptCollector.javascript()
    }
}
