//
//  Item.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML

/// An RSS `<item>` element representing a single entry in a feed.
///
/// An `<item>` contains the content and metadata for an individual feed entry,
/// such as its title, description, link, publication date, and unique identifier.
///
/// Valid child elements are constrained to types conforming to `ItemContent`,
/// ensuring only RSS-compatible elements may appear inside an item.
public struct Item: StandardTag, ChannelContent {

    /// The attributes associated with the `<item>` element.
    public var attributes: AttributeStore

    /// The child elements of `<item>`.
    public var children: [Element]

    /// Creates an `<item>` element with the given child elements.
    ///
    /// - Parameter children: The elements contained within this item.
    public init(
        children: [ItemContent]
    ) {
        self.attributes = .init()
        self.children = children
    }

    /// Creates an `<item>` element using a result builder.
    ///
    /// This initializer enables a declarative syntax for constructing RSS items.
    ///
    /// ## Example
    /// ```swift
    /// Item {
    ///     Title("Example Post")
    ///     Description("Post summary")
    ///     Guid("post-123")
    /// }
    /// ```
    public init(
        @Builder<ItemContent> _ block: () -> [ItemContent]
    ) {
        self.init(children: block())
    }
}
