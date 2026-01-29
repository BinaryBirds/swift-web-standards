import Testing

@testable import CSS

@Suite
struct OrderTests {

    @Test
    func initializers() {
        let property = Order(.number(2))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Order(.number(2))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let zero = Order(.number(0))
        let negative = Order(.number(-1))
        let inherit = Order(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(zero) == "order: 0")
        #expect(renderer.renderProperty(negative) == "order: -1")
        #expect(renderer.renderProperty(inherit) == "order: inherit")
    }
}
