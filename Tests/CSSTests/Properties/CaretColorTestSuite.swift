import Testing

@testable import CSS

@Suite
struct CaretColorTests {

    @Test
    func initializers() {
        let property = CaretColor()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = CaretColor()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let auto = CaretColor(.auto)
        let color = CaretColor(.blue)
        let inherit = CaretColor(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(auto) == "caret-color: auto")
        #expect(renderer.renderProperty(color) == "caret-color: blue")
        #expect(renderer.renderProperty(inherit) == "caret-color: inherit")
    }
}
