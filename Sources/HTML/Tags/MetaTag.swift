//
//  MetaTag.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// The `<meta>` tag defines metadata about an HTML document.
///
/// Metadata is data (information) about data.
///
/// `<meta>` tags always go inside the `<head>` element, and are typically used to specify character set, page description, keywords, author of the document, and viewport settings.
///
/// Metadata will not be displayed on the page, but is machine parsable.
/// Metadata is used by browsers (how to display content or reload page), search engines (keywords), and other web services.
///
/// There is a method to let web designers take control over the viewport (the user's visible area of a web page), through the `<meta>` tag (See "Setting The Viewport" example below).
public struct Meta:
    ShortTag,
    /// attribute modifiers.
    GlobalAttributesModifier,
    ContentAttributeModifier,
    NameAttributeModifier,
    MediaAttributeModifier,
    HttpEquivAttributeModifier,
    CharsetAttributeModifier,
    // categories
    MetadataContent,
    FlowContent,
    PhrasingContent
{
    public var attributes: AttributeStore

    public init() {
        self.attributes = .init()
    }

    public enum NameAttributeValue: String, AttributeValueRepresentable {
        /// Specifies the name of the Web application that the page represents.
        case applicationName = "application-name"
        /// Specifies the name of the author of the document.
        case author
        /// Specifies a description of the page. Search engines can pick up this description to show with the results of searches.
        case description
        /// Specifies one of the software packages used to generate the document (not used on hand-authored pages).
        case generator
        /// Specifies a comma-separated list of keywords - relevant to the page (Informs search engines what the page is about).
        case keywords
        /// Controls the viewport (the user's visible area of a web page).
        case viewport
        /// robots.
        case robots

        /// https://css-tricks.com/meta-theme-color-and-trickery/.
        case colorScheme = "color-scheme"
        case themeColor = "theme-color"
        case appleMobileWebAppTitle = "apple-mobile-web-app-title"
        case appleMobileWebAppCapable = "apple-mobile-web-app-capable"
        case appleMobileWebAppStatusBarStyle =
            "apple-mobile-web-app-status-bar-style"
    }

    public typealias NameAttributeValueType = NameAttributeValue

}
