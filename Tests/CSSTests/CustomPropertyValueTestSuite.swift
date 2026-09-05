import Testing
import WebBuilders

@testable import CSS

@Suite
struct CustomPropertyValueTests {
    private let renderer = CSSRenderer()
    private let color = CSSColor.variable("red-color")

    @Test
    func colorValuesRenderVariableReferences() {
        #expect(
            renderer.renderProperty(Color(color)) == "color: var(--red-color)"
        )
        #expect(
            renderer.renderProperty(Background(color: color))
                == "background: var(--red-color)"
        )
        #expect(
            renderer.renderProperty(BackgroundColor(color))
                == "background-color: var(--red-color)"
        )
        #expect(
            renderer.renderProperty(Border(1.px, .solid, color))
                == "border: 1px solid var(--red-color)"
        )
        #expect(
            renderer.renderProperty(BorderBottom(1.px, .solid, color))
                == "border-bottom: 1px solid var(--red-color)"
        )
        #expect(
            renderer.renderProperty(BorderLeft(1.px, .solid, color))
                == "border-left: 1px solid var(--red-color)"
        )
        #expect(
            renderer.renderProperty(BorderRight(1.px, .solid, color))
                == "border-right: 1px solid var(--red-color)"
        )
        #expect(
            renderer.renderProperty(BorderTop(1.px, .solid, color))
                == "border-top: 1px solid var(--red-color)"
        )
        #expect(
            renderer.renderProperty(BorderColor(color))
                == "border-color: var(--red-color)"
        )
        #expect(
            renderer.renderProperty(BoxShadow(1.px, 2.px, color: color))
                == "box-shadow: 1px 2px var(--red-color)"
        )
        #expect(
            renderer.renderProperty(
                Outline(.values(.length(1.px), .solid, .color(color)))
            ) == "outline: 1px solid var(--red-color)"
        )
        #expect(
            renderer.renderProperty(AccentColor(color))
                == "accent-color: var(--red-color)"
        )
        #expect(
            renderer.renderProperty(WebkitTextFillColor(color))
                == "-webkit-text-fill-color: var(--red-color)"
        )
    }

    @Test
    func nonColorValuesRenderVariableReferences() {
        #expect(
            renderer.renderProperty(BackgroundImage(.variable("hero-image")))
                == "background-image: var(--hero-image)"
        )
        #expect(
            renderer.renderProperty(GridTemplateColumns(.variable("columns")))
                == "grid-template-columns: var(--columns)"
        )
        #expect(
            renderer.renderProperty(
                GridTemplateColumns(.tracks([.variable("track-size")]))
            ) == "grid-template-columns: var(--track-size)"
        )
    }

    @Test
    func colorValueProvidesVariableConvenience() {
        #expect(
            CSSColorValue.variable("brand-color").rawValue
                == "var(--brand-color)"
        )
    }
}
