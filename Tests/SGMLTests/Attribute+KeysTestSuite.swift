//
//  Attribute+KeysTestSuite.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import Testing

@testable import SGML

@Suite
struct AttributeKeysTests {

    struct Root: StandardTag {
        var attributes: AttributeStore = .init()
        var children: [Element] = []
    }

    enum TestKey: String, AttributeKeyRepresentable {
        case dataFoo = "data-foo"
        case count = "data-count"
        case toggle = "data-toggle"
    }

    @Test
    func behavior() async throws {
        let tag = Root()
            .setAttribute(key: TestKey.dataFoo, value: "one")
            .addAttribute(key: TestKey.dataFoo, value: "two")

        #expect(tag.getAttribute(key: TestKey.dataFoo) == "one two")
        #expect(tag.hasAttribute(key: TestKey.dataFoo) == true)
        #expect(tag.hasAttribute(key: TestKey.dataFoo, value: "one") == true)
        #expect(tag.hasAttribute(key: TestKey.dataFoo, value: "three") == false)

        let removedValue = tag.removeAttribute(
            key: TestKey.dataFoo,
            value: "one"
        )
        #expect(removedValue.getAttribute(key: TestKey.dataFoo) == "two")

        let removedAttribute = removedValue.removeAttribute(
            key: TestKey.dataFoo
        )
        #expect(
            removedAttribute.getAttribute(key: TestKey.dataFoo) as String?
                == nil
        )

        let count = removedAttribute.setAttribute(key: TestKey.count, value: 3)
        let countValue = count.getAttribute(key: TestKey.count) as Int?
        #expect(countValue == 3)

        let doc = Document(
            root: Root().setAttribute(key: TestKey.toggle)
        )
        let expectation = #"""
            <root data-toggle></root>
            """#
        #expect(doc.render() == expectation)
    }
}
