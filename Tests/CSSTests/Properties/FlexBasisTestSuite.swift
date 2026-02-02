import Testing

@testable import CSS

@Suite
struct FlexBasisTests {

    @Test
    func initializers() {
        let property = FlexBasis()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = FlexBasis()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let auto = FlexBasis(.auto)
        let number = FlexBasis(.number(40.percent))
        let inherit = FlexBasis(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(auto) == "flex-basis: auto")
        #expect(renderer.renderProperty(number) == "flex-basis: 40%")
        #expect(renderer.renderProperty(inherit) == "flex-basis: inherit")
    }
}
