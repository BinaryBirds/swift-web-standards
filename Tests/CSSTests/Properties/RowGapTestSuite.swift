import Testing

@testable import CSS

@Suite
struct RowGapTests {

    @Test
    func initializers() {
        let property = RowGap()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = RowGap()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let normal = RowGap(.normal)
        let length = RowGap(.length(16.px))
        let inherit = RowGap(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(normal) == "row-gap: normal")
        #expect(renderer.renderProperty(length) == "row-gap: 16px")
        #expect(renderer.renderProperty(inherit) == "row-gap: inherit")
    }
}
