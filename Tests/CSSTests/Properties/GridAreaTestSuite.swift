import Testing

@testable import CSS

@Suite
struct GridAreaTests {

    @Test
    func initializers() {
        let property = GridArea(.name("value"))

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = GridArea(.name("value"))
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let name = GridArea(.name("header"))
        let values = GridArea(
            .values(
                .rowLine(1),
                .columnLine(2),
                .rowLine(3),
                .columnLine(4)
            )
        )

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(name) == "grid-area: header")
        #expect(renderer.renderProperty(values) == "grid-area: 1 / 2 / 3 / 4")
    }
}
