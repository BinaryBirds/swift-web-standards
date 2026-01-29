import SGML
import Testing

@testable import SVG

@Suite
struct PolylineTests {

    private func render(_ tag: Polyline) -> String {
        let renderer = Renderer()
        let doc = Document(root: tag)
        return renderer.render(document: doc)
    }

    @Test("polyline points use precise formatting and spacing")
    func polylinePrecisePoints() {
        let result = render(
            Polyline([5.0, 4.5, 3.0, 2.25, 1.0, 0.0])
        )

        let expectation = #"""
            <polyline points="5 4.5 3 2.25 1 0"></polyline>
            """#

        #expect(result == expectation)
    }

    @Test("polyline includes pathLength when provided")
    func polylineWithPathLength() {
        let result = render(
            Polyline([0, 1, 2, 3], pathLength: 6.0)
        )

        let expectation = #"""
            <polyline points="0 1 2 3" pathLength="6"></polyline>
            """#

        #expect(result == expectation)
    }
}
