import Testing

@testable import CSS

private func buildValues(includeExtras: Bool) -> [Int] {
    @Builder<Int> var values: [Int] {
        1
        if includeExtras {
            2
        }
        if includeExtras {
            3
        }
        else {
            4
        }
        for item in [5, 6] {
            item
        }
    }
    return values
}

@Suite
struct BuilderTests {

    @Test
    func behavior() {
        #expect(buildValues(includeExtras: true) == [1, 2, 3, 5, 6])
        #expect(buildValues(includeExtras: false) == [1, 4, 5, 6])
    }

    @Test
    func emptyBlocks() {
        @Builder<Int> var values: [Int] {
            if false {
                1
            }
        }

        #expect(values.isEmpty)
    }
}
