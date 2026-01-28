import SGML
import Testing

@testable import HTML

@Suite
struct ObjectTagTestSuite {

    @Test
    func initializationEmpty() async throws {
        let tag = Object()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <object></object>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func attributesAndParams() async throws {
        let tag = Object {
            Text("Fallback")
        }
        .data("movie.mp4")
        .type("video/mp4")
        .width(640)
        .height(360)
        .useMap("#media-map")
        .name(.author)

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <object data="movie.mp4" type="video/mp4" width="640" height="360" usemap="#media-map" name="author">Fallback</object>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithText() async throws {
        let tag = Object("Embedded content")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <object>Embedded content</object>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
