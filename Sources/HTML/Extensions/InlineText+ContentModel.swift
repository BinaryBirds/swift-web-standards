//
//  Builder+Text.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 06. 04.

import SGML

/// Add content model support to InlineText
extension InlineText:
    FlowContent,
    PhrasingContent
{

}

extension Builder where Element == any FlowContent {

    /// Converts string literals into inline text inside flow-content builders.
    public static func buildExpression(
        _ expression: String
    ) -> [Element] {
        [InlineText(expression)]
    }
}

extension Builder where Element == any PhrasingContent {

    /// Converts string literals into inline text inside phrasing-content builders.
    public static func buildExpression(
        _ expression: String
    ) -> [Element] {
        [InlineText(expression)]
    }
}
