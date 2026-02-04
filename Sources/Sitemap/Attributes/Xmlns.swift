//
//  Xmlns.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// An `xmlns` attribute used to declare the XML namespace for a sitemap document.
///
/// `Xmlns` defaults to the standard Sitemap protocol namespace.
/// (`http://www.sitemaps.org/schemas/sitemap/0.9`).
///
/// Use the default initializer for normal sitemap output, or provide a custom value.
/// to emit a different namespace.
/// Passing `nil` results in an `xmlns` attribute with a `nil` value (depending on the.
/// renderer’s behavior for optional attributes).
///
public struct Xmlns: Attribute {

    /// The namespace URI value for the `xmlns` attribute.
    public var value: String?

    /// Creates an `xmlns` attribute.
    ///
    /// - Parameter value: The namespace URI to use. Defaults to the standard sitemap.
    ///   namespace: `http://www.sitemaps.org/schemas/sitemap/0.9`.
    public init(
        _ value: String? = "http://www.sitemaps.org/schemas/sitemap/0.9"
    ) {
        self.value = value
    }
}
