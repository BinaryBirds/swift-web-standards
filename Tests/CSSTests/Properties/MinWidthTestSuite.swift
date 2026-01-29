import Testing

@testable import CSS

@Suite
struct MinWidthTests {

    @Test
    func initializers() {
        let property = MinWidth()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = MinWidth()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let length = MinWidth(240.px)
        let inherit = MinWidth(.inherit)
        let initial = MinWidth(.initial)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(length) == "min-width: 240px")
        #expect(renderer.renderProperty(inherit) == "min-width: inherit")
        #expect(renderer.renderProperty(initial) == "min-width: initial")
    }
}
