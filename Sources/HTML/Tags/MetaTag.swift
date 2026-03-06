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

    public enum NameAttributeValue: RawRepresentable,
        AttributeValueRepresentable
    {
        /// Specifies the name of the Web application that the page represents.
        case applicationName
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
        case colorScheme
        case themeColor
        case appleMobileWebAppTitle
        case appleMobileWebAppCapable
        case appleMobileWebAppStatusBarStyle
        case custom(String?)

        public init?(rawValue: String) {
            switch rawValue {
            case "application-name":
                self = .applicationName
            case "author":
                self = .author
            case "description":
                self = .description
            case "generator":
                self = .generator
            case "keywords":
                self = .keywords
            case "viewport":
                self = .viewport
            case "robots":
                self = .robots
            case "color-scheme":
                self = .colorScheme
            case "theme-color":
                self = .themeColor
            case "apple-mobile-web-app-title":
                self = .appleMobileWebAppTitle
            case "apple-mobile-web-app-capable":
                self = .appleMobileWebAppCapable
            case "apple-mobile-web-app-status-bar-style":
                self = .appleMobileWebAppStatusBarStyle
            default:
                self = .custom(rawValue)
            }
        }

        public var rawValue: String {
            switch self {
            case .applicationName:
                return "application-name"
            case .author:
                return "author"
            case .description:
                return "description"
            case .generator:
                return "generator"
            case .keywords:
                return "keywords"
            case .viewport:
                return "viewport"
            case .robots:
                return "robots"
            case .colorScheme:
                return "color-scheme"
            case .themeColor:
                return "theme-color"
            case .appleMobileWebAppTitle:
                return "apple-mobile-web-app-title"
            case .appleMobileWebAppCapable:
                return "apple-mobile-web-app-capable"
            case .appleMobileWebAppStatusBarStyle:
                return "apple-mobile-web-app-status-bar-style"
            case .custom(let value):
                return value ?? ""
            }
        }
    }

    public typealias NameAttributeValueType = NameAttributeValue

    public func property(
        _ value: String?
    ) -> Self {
        setAttribute(name: "property", value: value)
    }

    public func name(
        _ value: String?
    ) -> Self {
        name(.custom(value))
    }
}
