import Testing

@testable import CSS

@Suite
struct ListStyleImageTests {

    @Test
    func initializers() {
        let property = ListStyleImage(.initial)

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = ListStyleImage(.initial)
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }
}
