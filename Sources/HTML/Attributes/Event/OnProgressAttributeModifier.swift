//
//  OnProgressAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnProgressAttributeModifier {
    associatedtype OnProgressAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnProgressAttributeModifier where Self: Attributes & Mutable {

    public func onProgress(
        _ value: OnProgressAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.progress,
            value: value?.attributeValue
        )
    }
}
