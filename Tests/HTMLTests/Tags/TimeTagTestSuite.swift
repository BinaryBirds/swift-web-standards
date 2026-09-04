//
//  TimeTagTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML
import Testing
import WebBuilders

@testable import HTML

@Suite
struct TimeTagTestSuite {

    @Test
    func initialization() async throws {
        let tag = Time("2009-10-11")
            .dateTime("2009-10-11T01:25-07:00")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <time datetime="2009-10-11T01:25-07:00">2009-10-11</time>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func initializationWithBuilderText() async throws {
        let lastUpdate: String? = "Yesterday"

        let tag = Time {
            InlineText("2009-10-11")
            if let lastUpdate {
                " - Last Updated: "
                InlineText(lastUpdate)
            }
        }
        .dateTime("2009-10-11T01:25-07:00")
        .class("flex-1 align-middle")

        let renderer = SGMLRenderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <time datetime="2009-10-11T01:25-07:00" class="flex-1 align-middle">2009-10-11 - Last Updated: Yesterday</time>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

}
