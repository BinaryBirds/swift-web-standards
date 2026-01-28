import Testing

@testable import MIME

@Suite
struct MediaTypeScoreTestSuite {

    @Test
    func miscScores() async throws {

        let xFoo = MediaType(
            type: "application",
            subtype: "x-foo"
        )

        let xFooApache = MediaType(
            type: "font",
            subtype: "x.foo",
            source: .apache
        )
        let vndFooNginx = MediaType(
            type: "text",
            subtype: "vnd.foo",
            source: .nginx
        )
        let prsFooNginx = MediaType(
            type: "text",
            subtype: "prs.foo",
            source: .nginx
        )

        #expect(MediaType.Image.bmp().score == 940.91)
        #expect(xFoo.score == 231.83)
        #expect(xFooApache.score == 322.9)
        #expect(vndFooNginx.score == 410.88)
        #expect(prsFooNginx.score == 110.88)
    }

    @Test
    func facetPriority() async throws {
        #expect(MediaType.Image.bmp().score > MediaType.Image.xMsBmp().score)
    }

    @Test
    func sourcePriority() async throws {

        var bmp = MediaType.Image.bmp()

        bmp.source = .iana
        #expect(bmp.score == 940.91)

        bmp.source = .unknown
        #expect(bmp.score == 930.91)

        bmp.source = .apache
        #expect(bmp.score == 920.91)

        bmp.source = .nginx
        #expect(bmp.score == 910.91)
    }

    @Test
    func generalTypePriority() async throws {
        #expect(MediaType.Application.xml().score == 931.85)
        #expect(MediaType.Text.xml().score == 930.92)
    }

    @Test
    func lengthPriority() async throws {

        let wat = MediaType(
            type: "text",
            subtype: "wat"
        )
        let water = MediaType(
            type: "text",
            subtype: "water"
        )

        #expect(wat.score == 930.92)
        #expect(water.score == 930.9)
    }

    @Test
    func audioTypePriorities() async throws {
        #expect(MediaType.Audio.mp3().score == 933.91)
        #expect(MediaType.Audio.mpeg().score == 943.9)
    }

}
