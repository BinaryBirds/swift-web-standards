//
//  StylesheetRenderer.swift
//  swift-web-standards
//
//  Created by Tibor Bodecs on 2021. 11. 21.
//

/// Renders stylesheets, rules, selectors, and properties into CSS strings.
public struct StylesheetRenderer {

    /// Whether output should be minified.
    public let minify: Bool
    /// Indentation width used when not minifying.
    public let indent: Int

    private let newline: String
    private let singleSpace: String

    /// Creates a renderer.
    /// - Parameters:
    ///   - minify: When `true`, output is compact without whitespace.
    ///   - indent: Indentation size for formatted output.
    public init(
        minify: Bool = false,
        indent: Int = 4
    ) {
        self.minify = minify
        self.indent = minify ? 0 : indent
        self.newline = minify ? "" : "\n"
        self.singleSpace = minify ? "" : " "
    }

    /// Renders a stylesheet into a CSS string.
    /// - Parameter stylesheet: The stylesheet to render.
    /// - Returns: The rendered CSS text.
    public func render(
        _ stylesheet: Stylesheet
    ) -> String {
        stylesheet.rules
            .map { rule in
                switch rule {
                case let charset as Charset:
                    return #"@charset ""# + charset.name + #"";"#
                case let value as FontFace:
                    let properties = value.properties.map { renderProperty($0) }
                        .joined(separator: newline)
                    return "@font-face {" + newline + properties + newline + "}"
                case let value as Import:
                    return "@import " + value.name + ";"
                case let keyframes as Keyframes:
                    let selectors = keyframes.selectors
                        .map { renderSelector($0) }.joined(separator: newline)
                    return "@keyframes " + keyframes.name + singleSpace + "{"
                        + newline + selectors + newline + "}" + newline
                case let media as Media:
                    let level = media.query != nil ? 1 : 0
                    var selectors = media.selectors
                        .map { renderSelector($0, level: level) }
                        .joined(separator: newline)
                    if let query = media.query {
                        selectors =
                            "@media " + query.rawValue + singleSpace + "{"
                            + newline
                            + selectors + newline + "}"
                    }
                    return selectors
                default:
                    fatalError("unknown rule object")
                }
            }
            .joined(separator: newline)
    }

    // MARK: - helpers

    /// Renders a property into a CSS declaration string.
    /// - Parameters:
    ///   - property: The property to render.
    ///   - level: Indentation nesting level.
    /// - Returns: A rendered declaration line.
    func renderProperty(
        _ property: any Property,
        level: Int = 0
    ) -> String {
        let spaces = String(repeating: " ", count: level * indent)
        return spaces + property.name + ":" + singleSpace + property.value
            + (property.isImportant ? " !important" : "")
    }

    /// Renders a selector block with its properties.
    /// - Parameters:
    ///   - selector: The selector to render.
    ///   - level: Indentation nesting level.
    /// - Returns: A rendered selector block.
    func renderSelector(
        _ selector: Selector,
        level: Int = 0
    ) -> String {
        let spaces = String(repeating: " ", count: level * indent)
        var suffix = ""
        if let pseudo = selector.pseudo {
            suffix = pseudo
        }
        let properties =
            selector.properties.map { renderProperty($0, level: level + 1) }
            .joined(separator: ";" + newline) + (!minify ? ";" : "")
        return spaces + selector.name + suffix + singleSpace + "{" + newline
            + properties + newline + spaces + "}"
    }
}
