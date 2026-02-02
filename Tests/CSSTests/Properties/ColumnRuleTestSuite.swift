import Testing

@testable import CSS

@Suite
struct ColumnRuleTests {

    @Test
    func initializers() {
        let property = ColumnRule(.inherit)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = ColumnRule(.inherit)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let values = ColumnRule(.thin, .dashed, .color(.red))
        let initial = ColumnRule(.initial)

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderProperty(values) == "column-rule: thin dashed red"
        )
        #expect(renderer.renderProperty(initial) == "column-rule: initial")
    }
}
