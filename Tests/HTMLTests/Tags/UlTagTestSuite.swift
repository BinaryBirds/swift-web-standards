//
//  UlTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct UlTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Ul {}

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ul></ul>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func list() async throws {
        let tag = Ul {
            Li("a")
            Li("b")
            Li {
                P("c")
            }
        }

        let renderer = SGMLRenderer(indent: 4)
        let doc = Document(root: tag)

        let expectation = #"""
            <ul>
                <li>a</li>
                <li>b</li>
                <li>
                    <p>c</p>
                </li>
            </ul>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func attributes() async throws {
        let tag = Ul {}
            .id("menu")
            .setClass("primary")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ul id="menu" class="primary"></ul>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithText() async throws {
        let tag = Ul("Item list")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <ul>Item list</ul>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
