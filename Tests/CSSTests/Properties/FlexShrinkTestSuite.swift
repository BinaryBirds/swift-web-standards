import Testing

@testable import CSS

@Suite
struct FlexShrinkTests {

    @Test
    func initializers() {
        let property = FlexShrink(.number(2))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = FlexShrink(.number(2))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let zero = FlexShrink(.number(0))
        let two = FlexShrink(2)
        let inherit = FlexShrink(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(zero) == "flex-shrink: 0")
        #expect(renderer.renderProperty(two) == "flex-shrink: 2")
        #expect(renderer.renderProperty(inherit) == "flex-shrink: inherit")
    }
}
