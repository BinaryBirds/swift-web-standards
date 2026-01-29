import Testing

@testable import CSS

@Suite
struct TextCombineUprightTests {

    @Test
    func initializers() {
        let property = TextCombineUpright(.initial)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = TextCombineUpright(.initial)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let none = TextCombineUpright(.none)
        let all = TextCombineUpright(.all)
        let digits = TextCombineUpright(.digits(2))

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(none) == "text-combine-upright: none")
        #expect(renderer.renderProperty(all) == "text-combine-upright: all")
        #expect(
            renderer.renderProperty(digits) == "text-combine-upright: digits 2"
        )
    }
}
