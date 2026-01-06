import Testing

@testable import CSS

@Suite
struct AlignContentTests {

    @Test
    func initializers() {

        let property = AlignContent()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = #"""
            align-content: stretch
            """#

        #expect(result == expectation)
    }

    @Test
    func important() {

        let property = AlignContent()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = #"""
            align-content: stretch !important
            """#

        #expect(result == expectation)
    }
}
