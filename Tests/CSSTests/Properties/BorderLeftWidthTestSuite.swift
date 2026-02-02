import Testing

@testable import CSS

@Suite
struct BorderLeftWidthTests {

    @Test
    func initializers() {
        let property = BorderLeftWidth()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderLeftWidth()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let keyword = BorderLeftWidth(.thick)
        let length = BorderLeftWidth(5.px)
        let inherit = BorderLeftWidth(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(keyword) == "border-left-width: thick")
        #expect(renderer.renderProperty(length) == "border-left-width: 5px")
        #expect(
            renderer.renderProperty(inherit) == "border-left-width: inherit"
        )
    }
}
