//
//  OnLoadStartAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnLoadStartAttributeModifier {
    associatedtype OnLoadStartAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnLoadStartAttributeModifier where Self: Attributes & Mutable {

    public func onLoadStart(
        _ value: OnLoadStartAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.loadStart,
            value: value?.attributeValue
        )
    }
}
