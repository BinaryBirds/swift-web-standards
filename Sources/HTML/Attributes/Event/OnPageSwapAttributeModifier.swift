//
//  OnPageSwapAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnPageSwapAttributeModifier {
    associatedtype OnPageSwapAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPageSwapAttributeModifier where Self: Attributes & Mutable {

    public func onPageSwap(
        _ value: OnPageSwapAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pageSwap,
            value: value?.attributeValue
        )
    }
}
