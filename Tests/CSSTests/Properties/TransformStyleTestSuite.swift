import Testing

@testable import CSS

@Suite
struct TransformStyleTests {

    @Test
    func initializers() {
        let property = TransformStyle()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = TransformStyle()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }
}
