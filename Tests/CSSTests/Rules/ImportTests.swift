import Testing

@testable import CSS

@Suite
struct ImportTests {

    @Test
    func behavior() {
        let css = Stylesheet {
            Import("url(\"fonts.css\")")
        }

        let rendered = StylesheetRenderer().render(css)
        #expect(rendered == "@import url(\"fonts.css\");")
    }

    @Test
    func multipleRules() {
        let css = Stylesheet {
            Charset("UTF-8")
            Import("url(\"theme.css\")")
        }

        let rendered = StylesheetRenderer().render(css)
        let expectation = "@charset \"UTF-8\";\n@import url(\"theme.css\");"

        #expect(rendered == expectation)
    }
}
