import DOM

/// Renders SGML documents to strings.
public struct Renderer: Sendable {

    /// The indentation level used during rendering.
    public var indent: UInt8

    /// Creates a renderer.
    public init(
        indent: UInt8 = 0
    ) {
        self.indent = indent
    }

    /// Renders a document to a string.
    public func render(
        document: Document
    ) -> String {
        let renderer = DOM.Renderer(
            indent: indent
        )
        let doctype = render(type: document.type)
        let doc = renderer.render(node: document.root.node)
        if indent > 0, !doctype.isEmpty {
            return doctype + "\n" + doc
        }
        return doctype + doc
    }

    // MARK: - private

    private func render(
        type: DocType
    ) -> String {
        switch type {
        case .unspecified:
            ""
        case .html:
            #"<!doctype html>"#
        case .xml:
            #"<?xml version="1.0" encoding="utf-8" ?>"#
        case .custom(let value):
            value
        }
    }
}
