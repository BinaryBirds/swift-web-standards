//
//  ChannelContent.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 29.

import SGML

/// A marker protocol for elements that are valid children of an RSS `<channel>` element.
///
/// Types conforming to `ChannelContent` may appear inside a `<channel>`,
/// such as metadata, items, or other RSS-specific elements.
///
/// This protocol does not introduce additional requirements beyond `Element`;
/// it exists solely to provide semantic grouping and type safety.
public protocol ChannelContent: Element {}
