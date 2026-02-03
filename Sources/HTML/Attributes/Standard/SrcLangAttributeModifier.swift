//
//  SrcLangAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol SrcLangAttributeModifier {
    associatedtype SrcLangAttributeValueType: AttributeValueRepresentable =
        String
}

extension SrcLangAttributeModifier where Self: Attributes & Mutable {

    public func srcLang(

        _ value: SrcLangAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.srclang,
            value: value?.attributeValue
        )
    }
}
