import SGML
import Testing

@testable import HTML

@Suite
struct IframeTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Iframe {}

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <iframe></iframe>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func attributes() async throws {
        let tag = Iframe("Fallback content")
            .src("https://example.com/embed")
            .allow("fullscreen")
            .allowFullscreen("true")
            .loading(.lazy)
            .referrerPolicy(.noReferrer)
            .width(560)
            .height(315)
            .name(.author)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <iframe src="https://example.com/embed" allow="fullscreen" allowfullscreen="true" loading="lazy" referrerpolicy="no-referrer" width="560" height="315" name="author">Fallback content</iframe>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
