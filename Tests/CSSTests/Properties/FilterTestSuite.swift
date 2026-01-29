import Testing

@testable import CSS

@Suite
struct FilterTests {

    @Test
    func initializers() {
        let property = Filter()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Filter()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let blur = Filter(.blur(4))
        let brightness = Filter(.brightness(120))
        let hue = Filter(.hueRotate(90))
        let url = Filter(.url("filters.svg#blur"))
        let inherit = Filter(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(blur) == "filter: blur(4.0px)")
        #expect(
            renderer.renderProperty(brightness) == "filter: brightness(120.0%)"
        )
        #expect(renderer.renderProperty(hue) == "filter: hue-rotate(90.0deg)")
        #expect(renderer.renderProperty(url) == "filter: url(filters.svg#blur)")
        #expect(renderer.renderProperty(inherit) == "filter: inherit")
    }
}
