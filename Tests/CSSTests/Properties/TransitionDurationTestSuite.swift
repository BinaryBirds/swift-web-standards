import Testing

@testable import CSS

@Suite
struct TransitionDurationTests {

    @Test
    func initializers() {
        let property = TransitionDuration()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = TransitionDuration()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let zero = TransitionDuration(.zero)
        let seconds = TransitionDuration(.seconds(0.25))
        let milliseconds = TransitionDuration(.milliseconds(120))
        let inherit = TransitionDuration(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(zero) == "transition-duration: 0")
        #expect(
            renderer.renderProperty(seconds) == "transition-duration: 0.25s"
        )
        #expect(
            renderer.renderProperty(milliseconds)
                == "transition-duration: 120.0ms"
        )
        #expect(
            renderer.renderProperty(inherit) == "transition-duration: inherit"
        )
    }
}
