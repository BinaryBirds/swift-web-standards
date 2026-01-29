import Testing

@testable import CSS

@Suite
struct FontVariantAlternatesTests {

    @Test
    func initializers() {
        let property = FontVariantAlternates()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = FontVariantAlternates()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let normal = FontVariantAlternates(.normal)
        let stylistic = FontVariantAlternates(.stylistic("01"))
        let styleset = FontVariantAlternates(.styleset("02"))
        let characterVariant = FontVariantAlternates(.characterVariant("03"))
        let swash = FontVariantAlternates(.swash("04"))
        let unset = FontVariantAlternates(.unset)

        let renderer = StylesheetRenderer()
        #expect(
            renderer.renderProperty(normal) == "font-variant-alternates: normal"
        )
        #expect(
            renderer.renderProperty(stylistic)
                == "font-variant-alternates: salt 01"
        )
        #expect(
            renderer.renderProperty(styleset) == "font-variant-alternates: ss02"
        )
        #expect(
            renderer.renderProperty(characterVariant)
                == "font-variant-alternates: cv03"
        )
        #expect(
            renderer.renderProperty(swash) == "font-variant-alternates: swsh 04"
        )
        #expect(
            renderer.renderProperty(unset) == "font-variant-alternates: unset"
        )
    }
}
