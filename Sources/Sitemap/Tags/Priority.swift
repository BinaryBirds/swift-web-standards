//
//  Priority.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 28.

import SGML

/// A `<priority>` element indicating the relative priority of a URL.
///
/// This element is part of the Sitemap protocol and provides search engines.
/// with a hint about the importance of a URL relative to other URLs on the site.
///
/// The value is typically a number between `0.0` and `1.0`, where higher values.
/// indicate higher priority. This type provides multiple initializers for.
/// convenience when working with numeric values.
public struct Priority: StandardTag, UrlContent {

    /// The attributes associated with the `<priority>` element.
    public var attributes: AttributeStore

    /// The child elements of `<priority>`.
    ///
    /// This always contains a single text node representing the priority value.
    public var children: [Element]

    /// Creates a `<priority>` element with the given string value.
    ///
    /// - Parameter value: A string representing the priority value.
    ///   This is typically a number between `0.0` and `1.0`.
    public init(
        _ value: String
    ) {
        self.attributes = .init()
        self.children = [
            Text(value)
        ]
    }

    /// Creates a `<priority>` element from a floating-point value.
    ///
    /// - Parameter value: A floating-point priority value.
    public init(
        _ value: Float
    ) {
        self.init(String(value))
    }

    /// Creates a `<priority>` element from a double-precision value.
    ///
    /// - Parameter value: A double-precision priority value.
    public init(
        _ value: Double
    ) {
        self.init(String(value))
    }

    /// Creates a `<priority>` element from an integer value.
    ///
    /// - Parameter value: An integer priority value.
    public init(
        _ value: Int
    ) {
        self.init(String(value))
    }
}
