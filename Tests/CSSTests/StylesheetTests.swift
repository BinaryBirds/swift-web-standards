import Testing

@testable import CSS

@Suite
struct StylesheetTests {

    @Test
    func rulesArray() {
        let rules: [Rule] = [Charset("UTF-8"), Import("url(\"base.css\")")]
        let stylesheet = Stylesheet(rules)

        #expect(stylesheet.rules.count == 2)
    }

    @Test
    func builderRules() {
        let stylesheet = Stylesheet {
            Charset("UTF-8")
            Media {
                Root {
                    Variable("size", "10px")
                }
            }
        }

        #expect(stylesheet.rules.count == 2)
    }
}
