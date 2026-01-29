import SGML
import Testing

@testable import SVG

@Suite
struct LineTests {

    private func render(_ tag: Line) -> String {
        let renderer = Renderer()
        let doc = Document(root: tag)
        return renderer.render(document: doc)
    }

    @Test("line renders coordinates without trailing .0")
    func linePreciseCoordinates() {
        let result = render(
            Line(x1: 1.0, y1: 2.5, x2: 3.0, y2: 4.25)
        )

        let expectation = #"""
            <line x1="1" y1="2.5" x2="3" y2="4.25"></line>
            """#

        #expect(result == expectation)
    }

    @Test("line includes pathLength when provided")
    func lineWithPathLength() {
        let result = render(
            Line(x1: 0, y1: 1, x2: 2, y2: 3, pathLength: 10.0)
        )

        let expectation = #"""
            <line x1="0" y1="1" x2="2" y2="3" pathLength="10"></line>
            """#

        #expect(result == expectation)
    }
}
