//
//  OnPageRevealAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnPageRevealAttributeModifier {
    associatedtype OnPageRevealAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPageRevealAttributeModifier where Self: Attributes & Mutable {

    public func onPageReveal(
        _ value: OnPageRevealAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pageReveal,
            value: value?.attributeValue
        )
    }
}
