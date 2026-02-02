import Testing

@testable import CSS

private struct SampleProperty: Property {
    var name: String = "sample"
    var value: String = "value"
    var isImportant: Bool = false
}

@Suite
struct PropertyTests {

    @Test
    func behavior() {
        let base = SampleProperty()
        #expect(base.isImportant == false)

        let important = base.important()
        #expect(important.isImportant == true)

        let notImportant = base.important(false)
        #expect(notImportant.isImportant == false)

        let modified = base.modify { $0.value = "updated" }
        #expect(modified.value == "updated")

        let whenTrue = base.if(
            true,
            { value in
                value.modify { $0.value = "true" }
            },
            else: { value in
                value.modify { $0.value = "false" }
            }
        )
        #expect(whenTrue.value == "true")

        let whenFalse = base.if(
            false,
            { value in
                value.modify { $0.value = "true" }
            },
            else: { value in
                value.modify { $0.value = "false" }
            }
        )
        #expect(whenFalse.value == "false")

        let noElse = base.if(
            false,
            { value in
                value.modify { $0.value = "ignored" }
            }
        )
        #expect(noElse.value == "value")
    }
}
