import Testing

@testable import CSS

@Suite
struct AnimationDurationTests {

    @Test
    func initializers() {
        let property = AnimationDuration()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = AnimationDuration()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let zero = AnimationDuration(.zero)
        let seconds = AnimationDuration(.seconds(1.25))
        let milliseconds = AnimationDuration(.milliseconds(90))
        let inherit = AnimationDuration(.inherit)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(zero) == "animation-duration: 0")
        #expect(renderer.renderProperty(seconds) == "animation-duration: 1.25s")
        #expect(
            renderer.renderProperty(milliseconds)
                == "animation-duration: 90.0ms"
        )
        #expect(
            renderer.renderProperty(inherit) == "animation-duration: inherit"
        )
    }
}
