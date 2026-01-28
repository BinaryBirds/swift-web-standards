import SGML
import Testing

@testable import SVG

@Suite
struct PolygonTests {

    private func render(_ tag: Polygon) -> String {
        let renderer = Renderer()
        let doc = Document(root: tag)
        return renderer.render(document: doc)
    }

    @Test("polygon points use precise formatting and spacing")
    func polygonPrecisePoints() {
        let result = render(
            Polygon([0.0, 1.5, 2.0, 3.25, 4.0, 5.0])
        )

        let expectation = #"""
            <polygon points="0 1.5 2 3.25 4 5"></polygon>
            """#

        #expect(result == expectation)
    }

    @Test("polygon includes pathLength when provided")
    func polygonWithPathLength() {
        let result = render(
            Polygon([1, 2, 3, 4], pathLength: 9.0)
        )

        let expectation = #"""
            <polygon points="1 2 3 4" pathLength="9"></polygon>
            """#

        #expect(result == expectation)
    }
}

