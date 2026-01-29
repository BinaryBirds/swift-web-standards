import Testing

@testable import CSS

@Suite
struct RightTests {

    @Test
    func initializers() {
        let property = Right()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Right()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let auto = Right(.auto)
        let length = Right(24.px)
        let initial = Right(.initial)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(auto) == "right: auto")
        #expect(renderer.renderProperty(length) == "right: 24px")
        #expect(renderer.renderProperty(initial) == "right: initial")
    }
}
