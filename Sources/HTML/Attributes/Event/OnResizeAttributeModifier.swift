//
//  OnResizeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnResizeAttributeModifier {
    associatedtype OnResizeAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnResizeAttributeModifier where Self: Attributes & Mutable {

    public func onResize(
        _ value: OnResizeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.resize,
            value: value?.attributeValue
        )
    }
}
