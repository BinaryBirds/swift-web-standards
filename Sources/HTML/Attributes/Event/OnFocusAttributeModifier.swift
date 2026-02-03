//
//  OnFocusAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnFocusAttributeModifier {
    associatedtype OnFocusAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnFocusAttributeModifier where Self: Attributes & Mutable {

    public func onFocus(
        _ value: OnFocusAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.focus, value: value?.attributeValue)
    }
}
