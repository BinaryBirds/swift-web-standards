//
//  OnErrorAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnErrorAttributeModifier {
    associatedtype OnErrorAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnErrorAttributeModifier where Self: Attributes & Mutable {

    public func onError(
        _ value: OnErrorAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.error, value: value?.attributeValue)
    }
}
