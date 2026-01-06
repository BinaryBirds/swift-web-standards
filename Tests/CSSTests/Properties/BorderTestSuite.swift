import Testing

@testable import CSS

@Suite
struct BorderTests {

    @Test
    func initializers() {
        let property = Border(.initial)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Border(.initial)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }
}
