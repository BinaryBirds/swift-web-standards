import Testing

@testable import CSS

@Suite
struct BorderRightWidthTests {

    @Test
    func initializers() {
        let property = BorderRightWidth()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderRightWidth()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let keyword = BorderRightWidth(.thick)
        let length = BorderRightWidth(4.px)
        let inherit = BorderRightWidth(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(keyword) == "border-right-width: thick")
        #expect(renderer.renderProperty(length) == "border-right-width: 4px")
        #expect(
            renderer.renderProperty(inherit) == "border-right-width: inherit"
        )
    }
}
