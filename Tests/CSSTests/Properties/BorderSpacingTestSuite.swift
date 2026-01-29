import Testing

@testable import CSS

@Suite
struct BorderSpacingTests {

    @Test
    func initializers() {
        let property = BorderSpacing(.initial)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderSpacing(.initial)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let single = BorderSpacing(.length(8.px, nil))
        let pair = BorderSpacing(.length(8.px, 12.px))
        let inherit = BorderSpacing(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(single) == "border-spacing: 8px")
        #expect(renderer.renderProperty(pair) == "border-spacing: 8px 12px")
        #expect(renderer.renderProperty(inherit) == "border-spacing: inherit")
    }
}
