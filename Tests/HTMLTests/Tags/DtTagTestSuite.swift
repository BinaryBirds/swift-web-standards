import SGML
import Testing

@testable import HTML

@Suite
struct DtTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Dt {
            Text("Lorem ipsum")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <dt>Lorem ipsum</dt>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func textWithAttributes() async throws {
        let tag = Dt("Term")
            .id("term-1")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <dt id="term-1">Term</dt>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
