//
//  Document.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

/// An SGML document with a doctype and root element.
public struct Document: Sendable {

    /// The document type declaration.
    public let type: DocType
    /// The root element of the document.
    public let root: Element

    /// Creates a document.
    public init(
        type: DocType = .unspecified,
        root: Element
    ) {
        self.type = type
        self.root = root
    }

    /// Renders the document to a string.
    public func render(
        indent: UInt8 = 0
    ) -> String {
        let renderer = Renderer(indent: indent)
        return renderer.render(document: self)
    }
}
