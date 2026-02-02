import Testing

@testable import CSS

@Suite
struct UnitsTests {

    @Test
    func behavior() {
        #expect(8.px.rawValue == "8px")
        #expect(2.5.rem.rawValue == "2.5rem")
        #expect(10.percent.rawValue == "10%")
        #expect(3.em.rawValue == "3em")
        #expect(4.vw.rawValue == "4vw")
        #expect(7.vh.rawValue == "7vh")
        #expect(9.vmin.rawValue == "9vmin")
        #expect(11.vmax.rawValue == "11vmax")
        #expect(2.cm.rawValue == "2cm")
        #expect(3.mm.rawValue == "3mm")
        #expect(4.pt.rawValue == "4pt")
        #expect(Unit(value: 3, type: .cm).rawValue == "3cm")
        #expect(5.rawValue == "5")
        #expect(1.25.rawValue == "1.25")
    }
}
