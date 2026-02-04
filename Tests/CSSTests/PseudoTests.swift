//
//  PseudoTests.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 02. 02.

import Testing

@testable import CSS

@Suite
struct PseudoTests {

    @Test
    func behavior() {
        #expect(Pseudo.hover.value == ":hover")
        #expect(Pseudo.after.value == "::after")
        #expect(Pseudo.lang("en").value == ":lang(en)")
        #expect(Pseudo.not("div").value == ":not(div)")
        #expect(Pseudo.nthChild(2).value == ":nth-child(2)")
        #expect(Pseudo.selection.value == "::selection")
        #expect(Pseudo.firstChild.value == ":first-child")
        #expect(Pseudo.nthLastOfType(3).value == ":nth-last-of-type(3)")
        #expect(Pseudo.placeholder.value == ":placeholder")
        #expect(Pseudo.readOnly.value == ":read-only")
        #expect(Pseudo.fullscreen.value == ":fullscreen")
        #expect(Pseudo.before.value == "::before")
        #expect(Pseudo.marker.value == "::marker")
        #expect(Pseudo.visited.value == ":visited")
        #expect(Pseudo.onlyChild.value == ":only-child")
        #expect(Pseudo.firstOfType.value == ":first-of-type")
        #expect(Pseudo.lastOfType.value == ":last-of-type")
        #expect(Pseudo.nthOfType(2).value == ":nth-of-type(2)")
        #expect(Pseudo.nthLastChild(3).value == ":nth-last-child(3)")
    }
}
