import SGML
import Testing

@testable import HTML

@Suite
struct DlTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Dl {
            Text("Lorem ipsum")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <dl>Lorem ipsum</dl>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func definitionList() async throws {
        let tag = Dl {
            Dt("CPU")
            Dd("Central Processing Unit")
            Dt("RAM")
            Dd("Random Access Memory")
        }
        .id("glossary")

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <dl id="glossary">
                <dt>CPU</dt>
                <dd>Central Processing Unit</dd>
                <dt>RAM</dt>
                <dd>Random Access Memory</dd>
            </dl>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithText() async throws {
        let tag = Dl("Terms")
            .id("terms")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <dl id="terms">Terms</dl>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
