import Testing

@testable import CSS

@Suite
struct BorderBottomColorTests {

    @Test
    func initializers() {
        let property = BorderBottomColor(.color(.red))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = BorderBottomColor(.color(.red))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let transparent = BorderBottomColor(.transparent)
        let named = BorderBottomColor(.blueViolet)
        let inherit = BorderBottomColor(.inherit)

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderProperty(transparent)
                == "border-bottom-color: transparent"
        )
        #expect(
            renderer.renderProperty(named) == "border-bottom-color: blueviolet"
        )
        #expect(
            renderer.renderProperty(inherit) == "border-bottom-color: inherit"
        )
    }
}
