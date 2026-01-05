import Testing

@testable import MIME

@Suite
struct ScoreTests {

    @Test
    func miscScores() async throws {
        let detector = MediaTypeDetector()

        #expect(
            detector.getMIMEScore(for: "image/bmp", source: .iana) == 940.91
        )
        #expect(
            detector.getMIMEScore(for: "application/x-foo") == 231.83
        )
        #expect(
            detector.getMIMEScore(for: "font/x.foo", source: .apache) == 322.9
        )
        #expect(
            detector.getMIMEScore(for: "text/vnd.foo", source: .nginx) == 410.88
        )
        #expect(
            detector.getMIMEScore(for: "text/prs.foo", source: .nginx) == 110.88
        )
    }

    @Test
    func facetPriority() async throws {
        let detector = MediaTypeDetector()

        #expect(
            detector.getMIMEScore(for: "image/bmp")
                > detector.getMIMEScore(for: "image/x-ms-bmp")
        )
    }

    @Test
    func sourcePriority() async throws {
        let detector = MediaTypeDetector()

        #expect(
            detector.getMIMEScore(for: "image/bmp", source: .iana) == 940.91
        )
        #expect(
            detector.getMIMEScore(for: "image/bmp") == 930.91
        )
        #expect(
            detector.getMIMEScore(for: "image/bmp", source: .apache) == 920.91
        )
        #expect(
            detector.getMIMEScore(for: "image/bmp", source: .nginx) == 910.91
        )
    }

    @Test
    func generalTypePriority() async throws {
        let detector = MediaTypeDetector()

        #expect(
            detector.getMIMEScore(for: "application/xml") == 931.85
        )
        #expect(
            detector.getMIMEScore(for: "text/xml") == 930.92
        )
    }

    @Test
    func lengthPriority() async throws {
        let detector = MediaTypeDetector()

        #expect(
            detector.getMIMEScore(for: "text/wat") == 930.92
        )
        #expect(
            detector.getMIMEScore(for: "text/water") == 930.9
        )
    }
}
