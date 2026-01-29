import Testing

@testable import CSS

@Suite
struct OutlineWidthTests {

    @Test
    func initializers() {
        let property = OutlineWidth()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = OutlineWidth()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let thin = OutlineWidth(.thin)
        let length = OutlineWidth(.length(3.px))
        let inherit = OutlineWidth(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(thin) == "outline-width: thin")
        #expect(renderer.renderProperty(length) == "outline-width: 3px")
        #expect(renderer.renderProperty(inherit) == "outline-width: inherit")
    }
}
