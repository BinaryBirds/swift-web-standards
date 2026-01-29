import Testing

@testable import CSS

@Suite
struct MediaTests {

    @Test
    func queryOperators() {
        let notScreen = !Media.Query.screen
        #expect(notScreen.rawValue == "not screen")

        let minWidth = Media.Query.screen && .minWidth(600.px)
        #expect(minWidth.rawValue == "screen and (min-width: 600px)")

        let orQuery = Media.Query.print || .screen
        #expect(orQuery.rawValue == "print, screen")

        let monochrome = Media.Query.monochrome("2")
        #expect(monochrome.rawValue == "(monochrome: 2)")
    }

    @Test
    func rendering() {
        let css = Stylesheet {
            Media(.screen && .minWidth(600.px)) {
                Class("card") {
                    Width(300.px)
                }
            }
        }

        let rendered = StylesheetRenderer().render(css)
        let expectation = "@media screen and (min-width: 600px) {\n    .card {\n        width: 300px;\n    }\n}"

        #expect(rendered == expectation)
    }

    @Test
    func noQuery() {
        let css = Stylesheet {
            Media {
                Class("box") {
                    Height(40.px)
                }
            }
        }

        let rendered = StylesheetRenderer().render(css)
        let expectation = ".box {\n    height: 40px;\n}"

        #expect(rendered == expectation)
    }

    @Test
    func queryValues() {
        #expect(Media.Query.width(480.px).rawValue == "(width: 480px)")
        #expect(Media.Query.minHeight(900.px).rawValue == "(min-height: 900px)")
        #expect(Media.Query.orientation(.landscape).rawValue == "(orientation: landscape)")
        #expect(
            Media.Query.prefersColorScheme(.dark).rawValue
                == "(prefers-color-scheme: dark)"
        )
        #expect(Media.Query.displayMode(.standalone).rawValue == "(display-mode: standalone)")
    }

    @Test
    func queryCombinations() {
        let query = Media.Query.print || (.screen && .minWidth(768.px))
        #expect(query.rawValue == "print, screen and (min-width: 768px)")

        let negated = !Media.Query.custom("screen and (max-width: 599px)")
        #expect(negated.rawValue == "not screen and (max-width: 599px)")

        let aspect = Media.Query.deviceAspectRatio("16/9")
        #expect(aspect.rawValue == "(device-aspect-ratio: 16/9)")
    }

    @Test
    func additionalValues() {
        #expect(Media.Query.color("8").rawValue == "(color: 8)")
        #expect(Media.Query.resolution("300dpi").rawValue == "(resolution: 300dpi)")
        #expect(Media.Query.grid(.yes).rawValue == "(grid: 1)")
        #expect(Media.Query.scan(.progressive).rawValue == "(scan: progressive)")
        #expect(Media.Query.deviceWidth(1024.px).rawValue == "(device-width: 1024px)")
    }

    @Test
    func moreQueries() {
        #expect(Media.Query.maxWidth(1200.px).rawValue == "(max-width: 1200px)")
        #expect(Media.Query.minColor("4").rawValue == "(min-color: 4)")
        #expect(Media.Query.maxResolution("2dppx").rawValue == "(max-resolution: 2dppx)")
    }

    @Test
    func deviceAndAspectValues() {
        #expect(Media.Query.deviceMinWidth(480.px).rawValue == "(min-device-width: 480px)")
        #expect(Media.Query.deviceMaxHeight(900.px).rawValue == "(max-device-height: 900px)")
        #expect(Media.Query.minAspectRatio("4/3").rawValue == "(min-aspect-ratio: 4/3)")
        #expect(Media.Query.maxAspectRatio("21/9").rawValue == "(max-aspect-ratio: 21/9)")
    }
}
