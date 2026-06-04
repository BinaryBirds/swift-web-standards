//
//  SVGContentConformanceTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 06. 04.

import SGML
import Testing

@testable import HTML
@testable import SVG

@Suite
struct SVGContentConformanceTestSuite {

    @Test
    func svgCanBeUsedInPhrasingContentBuilders() async throws {
        let tag = Kbd {
            SVG {
                Circle(cx: 8, cy: 8, r: 8)
            }
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <kbd><svg><circle cx="8" cy="8" r="8"></circle></svg></kbd>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }

    @Test
    func svgCanBeUsedInFlowContentBuilders() async throws {
        let tag = Div {
            SVG {
                Circle(cx: 8, cy: 8, r: 8)
            }
        }

        let renderer = Renderer()
        let doc = Document(root: tag)

        let expectation = #"""
            <div><svg><circle cx="8" cy="8" r="8"></circle></svg></div>
            """#

        let result = renderer.render(document: doc)
        #expect(result == expectation)
    }
}
