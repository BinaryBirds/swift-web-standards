import Testing

@testable import CSS

@Suite
struct TextDecorationColorTests {

    @Test
    func initializers() {
        let property = TextDecorationColor(.color(.red))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = TextDecorationColor(.color(.red))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let initial = TextDecorationColor(.initial)
        let color = TextDecorationColor(.blue)
        let inherit = TextDecorationColor(.inherit)

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderProperty(initial) == "text-decoration-color: initial"
        )
        #expect(renderer.renderProperty(color) == "text-decoration-color: blue")
        #expect(
            renderer.renderProperty(inherit) == "text-decoration-color: inherit"
        )
    }
}
