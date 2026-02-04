//
//  OnCopyAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnCopyAttributeModifier {
    associatedtype OnCopyAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnCopyAttributeModifier where Self: Attributes & Mutable {

    public func onCopy(
        _ value: OnCopyAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.copy, value: value?.attributeValue)
    }
}
