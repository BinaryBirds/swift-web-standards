import Testing

@testable import CSS

@Suite
struct AnimationDelayTests {

    @Test
    func initializers() {
        let property = AnimationDelay()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = AnimationDelay()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let zero = AnimationDelay(.zero)
        let seconds = AnimationDelay(.seconds(0.75))
        let milliseconds = AnimationDelay(.milliseconds(200))
        let inherit = AnimationDelay(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(zero) == "animation-delay: 0")
        #expect(renderer.renderProperty(seconds) == "animation-delay: 0.75s")
        #expect(
            renderer.renderProperty(milliseconds) == "animation-delay: 200.0ms"
        )
        #expect(renderer.renderProperty(inherit) == "animation-delay: inherit")
    }
}
