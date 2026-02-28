//
//  CursorTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import Testing

@testable import CSS

@Suite
struct CursorTests {

    @Test
    func initializers() {
        let property = Cursor()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value)"

        #expect(result == expectation)
    }

    @Test
    func important() {
        let property = Cursor()
            .important()

        let renderer = StylesheetRenderer()
        let result = renderer.renderProperty(property)

        let expectation = "\(property.name): \(property.value) !important"

        #expect(result == expectation)
    }

    @Test
    func values() {
        let allScroll = Cursor(.allScroll)
        let contextMenu = Cursor(.contextMenu)
        let colResize = Cursor(.colResize)
        let eResize = Cursor(.eResize)
        let ewResize = Cursor(.ewResize)
        let neResize = Cursor(.neResize)
        let nwseResize = Cursor(.nwseResize)
        let rowResize = Cursor(.rowResize)
        let sResize = Cursor(.sResize)
        let wResize = Cursor(.wResize)
        let notAllowed = Cursor(.notAllowed)
        let verticalText = Cursor(.verticalText)
        let zoomIn = Cursor(.zoomIn)
        let zoomOut = Cursor(.zoomOut)

        let renderer = StylesheetRenderer()
        #expect(renderer.renderProperty(allScroll) == "cursor: all-scroll")
        #expect(renderer.renderProperty(contextMenu) == "cursor: context-menu")
        #expect(renderer.renderProperty(colResize) == "cursor: col-resize")
        #expect(renderer.renderProperty(eResize) == "cursor: e-resize")
        #expect(renderer.renderProperty(ewResize) == "cursor: ew-resize")
        #expect(renderer.renderProperty(neResize) == "cursor: ne-resize")
        #expect(renderer.renderProperty(nwseResize) == "cursor: nwse-resize")
        #expect(renderer.renderProperty(rowResize) == "cursor: row-resize")
        #expect(renderer.renderProperty(sResize) == "cursor: s-resize")
        #expect(renderer.renderProperty(wResize) == "cursor: w-resize")
        #expect(renderer.renderProperty(notAllowed) == "cursor: not-allowed")
        #expect(
            renderer.renderProperty(verticalText) == "cursor: vertical-text"
        )
        #expect(renderer.renderProperty(zoomIn) == "cursor: zoom-in")
        #expect(renderer.renderProperty(zoomOut) == "cursor: zoom-out")
    }
}
