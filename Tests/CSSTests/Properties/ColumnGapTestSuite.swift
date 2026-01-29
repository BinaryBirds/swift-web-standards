import Testing

@testable import CSS

@Suite
struct ColumnGapTests {

    @Test
    func initializers() {
        let property = ColumnGap(.length(5.px))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = ColumnGap(.length(5.px))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let normal = ColumnGap(.normal)
        let length = ColumnGap(.length(12.px))
        let inherit = ColumnGap(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(normal) == "column-gap: normal")
        #expect(renderer.renderProperty(length) == "column-gap: 12px")
        #expect(renderer.renderProperty(inherit) == "column-gap: inherit")
    }
}
