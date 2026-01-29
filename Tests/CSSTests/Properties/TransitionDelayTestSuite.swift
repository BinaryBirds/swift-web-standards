import Testing

@testable import CSS

@Suite
struct TransitionDelayTests {

    @Test
    func initializers() {
        let property = TransitionDelay()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = TransitionDelay()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let zero = TransitionDelay(.zero)
        let seconds = TransitionDelay(.seconds(0.5))
        let milliseconds = TransitionDelay(.milliseconds(150))
        let inherit = TransitionDelay(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(zero) == "transition-delay: 0")
        #expect(renderer.renderProperty(seconds) == "transition-delay: 0.5s")
        #expect(
            renderer.renderProperty(milliseconds) == "transition-delay: 150.0ms"
        )
        #expect(renderer.renderProperty(inherit) == "transition-delay: inherit")
    }
}
