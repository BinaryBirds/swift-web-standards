//
//  ContentModel.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 06. 04.

import SGML

/// HTML flow content.
public protocol FlowContent: Element {}

/// HTML phrasing content.
public protocol PhrasingContent: Element {}

/// HTML embedded content.
public protocol EmbeddedContent: Element {}

/// HTML interactive content.
public protocol InteractiveContent: Element {}

/// HTML heading content.
public protocol HeadingContent: Element {}

/// HTML metadata content.
public protocol MetadataContent: Element {}

/// HTML sectioning content.
public protocol SectioningContent: Element {}

/// HTML palpable content.
public protocol PalpableContent: Element {}

/// Content allowed inside `select`.
public protocol SelectInnerContent: Element {}

/// Content allowed inside `optgroup`.
public protocol OptgroupInnerContent: Element {}

/// Script-supporting content.
public protocol ScriptSupportingContent: Element {}
