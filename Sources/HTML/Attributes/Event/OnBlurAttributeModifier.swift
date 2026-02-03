//
//  OnBlurAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnBlurAttributeModifier {
    associatedtype OnBlurAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnBlurAttributeModifier where Self: Attributes & Mutable {

    public func onBlur(
        _ value: OnBlurAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.blur, value: value?.attributeValue)
    }
}
