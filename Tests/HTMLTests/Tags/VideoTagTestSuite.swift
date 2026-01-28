import SGML
import Testing

@testable import HTML

@Suite
struct VideoTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Video {
            Text("Video fallback")
        }
        .src("clip.mp4")
        .controls()
        .poster("poster.jpg")
        .width(640)
        .height(360)
        .playsInline()

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <video src="clip.mp4" controls poster="poster.jpg" width="640" height="360" playsinline>Video fallback</video>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func sourcesWithFallback() async throws {
        let tag = Video {
            Source()
                .src("clip.webm")
                .type("video/webm")
            Source()
                .src("clip.mp4")
                .type("video/mp4")
            Text("Your browser does not support the video tag.")
        }
        .controls()
        .preload(.auto)

        let renderer = Renderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <video controls preload="auto">
                <source src="clip.webm" type="video/webm">
                <source src="clip.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func playbackAttributes() async throws {
        let tag = Video("Fallback")
            .src("movie.mp4")
            .autoPlay()
            .muted()
            .loop()
            .crossOrigin(.anonymous)

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <video src="movie.mp4" autoplay muted loop crossorigin="anonymous">Fallback</video>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
