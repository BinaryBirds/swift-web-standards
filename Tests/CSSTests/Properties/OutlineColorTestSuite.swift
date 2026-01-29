import Testing

@testable import CSS

@Suite
struct OutlineColorTests {

    @Test
    func initializers() {
        let property = OutlineColor()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = OutlineColor()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let invert = OutlineColor(.invert)
        let color = OutlineColor(.color(.red))
        let inherit = OutlineColor(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(invert) == "outline-color: invert")
        #expect(renderer.renderProperty(color) == "outline-color: red")
        #expect(renderer.renderProperty(inherit) == "outline-color: inherit")
    }
}
