//
//  SrcAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol SrcAttributeModifier {
    associatedtype SrcAttributeValueType: AttributeValueRepresentable = String
}

extension SrcAttributeModifier where Self: Attributes & Mutable {

    public func src(
        _ value: SrcAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.src,
            value: value?.attributeValue
        )
    }
}
