import SGML
import Testing

@testable import HTML

@Suite
struct StyleTestSuite {

    @Test
    func initializationWithText() async throws {
        let tag = Style("body { color: red; }")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <style>body { color: red; }</style>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func mediaAndBlocking() async throws {
        let tag = Style("h1 { color: blue; }")
            .media("screen")
            .blocking(.render)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <style media="screen" blocking="render">h1 { color: blue; }</style>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func mediaOnly() async throws {
        let tag = Style("p { margin: 0; }")
            .media("print")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <style media="print">p { margin: 0; }</style>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func blockingOnly() async throws {
        let tag = Style(".app { display: grid; }")
            .blocking(.render)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <style blocking="render">.app { display: grid; }</style>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
