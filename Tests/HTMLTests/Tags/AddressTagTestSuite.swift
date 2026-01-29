import SGML
import Testing

@testable import HTML

@Suite
struct AddressTagTestSuite {

    @Test
    func basics() async throws {
        let tag = Address {
            Text("For more details, contact")
            //              <a href="mailto:js@example.com">John Smith</a>
            Text(".")
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <address>For more details, contact.</address>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func contactLink() async throws {
        let tag = Address {
            A("Contact us")
                .href("mailto:team@example.com")
        }
        .id("contact")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <address id="contact"><a href="mailto:team@example.com">Contact us</a></address>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithText() async throws {
        let tag = Address("123 Example St.")

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <address>123 Example St.</address>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
