//
//  OnSearchAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnSearchAttributeModifier {
    associatedtype OnSearchAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnSearchAttributeModifier where Self: Attributes & Mutable {

    public func onSearch(
        _ value: OnSearchAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.search,
            value: value?.attributeValue
        )
    }
}
