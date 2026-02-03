//
//  UrlsetTests.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML
import Testing

@testable import Sitemap

@Suite
struct UrlsetTests {

    private func render(_ tag: Urlset, indent: UInt8 = 0) -> String {
        let renderer = Renderer(indent: indent)
        let doc = Document(root: tag)
        return renderer.render(document: doc)
    }

    @Test("urlset uses default sitemap xmlns when none is provided")
    func urlsetDefaultXmlns() {
        let result = render(
            Urlset {
                Url { Loc("https://example.com/") }
            }
        )

        let expectation = #"""
            <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"><url><loc>https://example.com/</loc></url></urlset>
            """#

        #expect(result == expectation)
    }

    @Test("urlset uses custom xmlns when provided")
    func urlsetCustomXmlns() {
        let result = render(
            Urlset(xmlns: "https://example.com/ns") {
                Url { Loc("https://example.com/a") }
            }
        )

        let expectation = #"""
            <urlset xmlns="https://example.com/ns"><url><loc>https://example.com/a</loc></url></urlset>
            """#

        #expect(result == expectation)
    }

    @Test("urlset children array initializer renders urls in order")
    func urlsetChildrenArrayInit() {
        let urls: [Url] = [
            Url { Loc("https://example.com/one") },
            Url { Loc("https://example.com/two") },
        ]

        let result = render(Urlset(children: urls), indent: 4)

        let expectation = #"""
            <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
                <url>
                    <loc>https://example.com/one</loc>
                </url>
                <url>
                    <loc>https://example.com/two</loc>
                </url>
            </urlset>
            """#

        #expect(result == expectation)
    }
}
