//
//  ShadowRootDelegatesFocusAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol ShadowRootDelegatesFocusAttributeModifier {
    associatedtype
        ShadowRootDelegatesFocusAttributeValueType: AttributeValueRepresentable =
        String
}

extension ShadowRootDelegatesFocusAttributeModifier
where Self: Attributes & Mutable {

    public func shadowRootDelegatesFocus(
        _ value: ShadowRootDelegatesFocusAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.shadowrootdelegatesfocus,
            value: value?.attributeValue
        )
    }
}
