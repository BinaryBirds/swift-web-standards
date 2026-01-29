import SGML
import Testing

@testable import HTML

@Suite
struct WidthAttributeTestSuite {

    @Test
    func rendersWidthValue() async throws {
        let tag = Canvas {}
            .width(2)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <canvas width="2"></canvas>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func rendersWidthOnIframe() async throws {
        let tag = Iframe {}
            .width(640)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <iframe width="640"></iframe>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func rendersWidthOnObject() async throws {
        let tag = Object("Media")
            .width(300)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <object width="300">Media</object>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
