import SGML
import Testing

@testable import HTML

@Suite
struct SearchTagTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Search("Find")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <search>Find</search>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithElements() async throws {
        let tag = Search {
            Label("Search")
                .for("query")
            Input()
                .type(.search)
                .id("query")
        }
        .id("site-search")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <search id="site-search"><label for="query">Search</label><input type="search" id="query"></search>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
