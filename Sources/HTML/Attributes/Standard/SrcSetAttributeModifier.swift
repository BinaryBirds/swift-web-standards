//
//  SrcSetAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol SrcSetAttributeModifier {
    associatedtype SrcSetAttributeValueType: AttributeValueRepresentable =
        String
}

extension SrcSetAttributeModifier where Self: Attributes & Mutable {

    public func srcSet(
        _ value: SrcSetAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.srcset,
            value: value?.attributeValue
        )
    }
}
