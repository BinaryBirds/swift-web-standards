@testable import CSS

struct TestVariableName: CSSVariableNameRepresentable {
    let rawValue: String

    init(_ rawValue: String) {
        self.rawValue = rawValue
    }
}
