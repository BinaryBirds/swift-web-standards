import Testing

@testable import CSS

@Suite
struct BorderTopColorTests {

    @Test
    func initializers() {
        let property = BorderTopColor(.color(.red))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderTopColor(.color(.red))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let transparent = BorderTopColor(.transparent)
        let named = BorderTopColor(.gold)
        let inherit = BorderTopColor(.inherit)

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderProperty(transparent)
                == "border-top-color: transparent"
        )
        #expect(renderer.renderProperty(named) == "border-top-color: gold")
        #expect(renderer.renderProperty(inherit) == "border-top-color: inherit")
    }
}
