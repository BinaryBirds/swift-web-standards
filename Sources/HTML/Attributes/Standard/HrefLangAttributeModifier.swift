//
//  HrefLangAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol HrefLangAttributeModifier {
    associatedtype HrefLangAttributeValueType: AttributeValueRepresentable =
        String
}

extension HrefLangAttributeModifier where Self: Attributes & Mutable {

    public func hrefLang(
        _ value: HrefLangAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.hreflang,
            value: value?.attributeValue
        )
    }
}
