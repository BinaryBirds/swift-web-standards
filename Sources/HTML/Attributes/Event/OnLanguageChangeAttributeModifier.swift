//
//  OnLanguageChangeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnLanguageChangeAttributeModifier {
    associatedtype
        OnLanguageChangeAttributeValueType: AttributeValueRepresentable = String
}

extension OnLanguageChangeAttributeModifier where Self: Attributes & Mutable {

    public func onLanguageChange(
        _ value: OnLanguageChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.languageChange,
            value: value?.attributeValue
        )
    }
}
