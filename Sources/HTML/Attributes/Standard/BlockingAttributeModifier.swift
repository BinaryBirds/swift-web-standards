//
//  BlockingAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public enum BlockingAttributeValue: String, Sendable,
    AttributeValueRepresentable
{
    case render
}

public protocol BlockingAttributeModifier {
    associatedtype BlockingAttributeValueType: AttributeValueRepresentable =
        BlockingAttributeValue
}

extension BlockingAttributeModifier where Self: Attributes & Mutable {

    public func blocking(
        _ value: BlockingAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.blocking,
            value: value?.attributeValue
        )
    }
}
