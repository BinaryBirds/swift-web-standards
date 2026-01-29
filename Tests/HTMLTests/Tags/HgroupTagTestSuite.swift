import SGML
import Testing

@testable import HTML

@Suite
struct HgroupTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Hgroup {}

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <hgroup></hgroup>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func headingGroup() async throws {
        let tag = Hgroup {
            H1("Title")
            P("Subtitle")
        }
        .id("hero-heading")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <hgroup id="hero-heading"><h1>Title</h1><p>Subtitle</p></hgroup>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithTextContent() async throws {
        let tag = Hgroup("Headline")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <hgroup>Headline</hgroup>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
