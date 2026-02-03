//
//  OnPageHideAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnPageHideAttributeModifier {
    associatedtype OnPageHideAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPageHideAttributeModifier where Self: Attributes & Mutable {

    public func onPageHide(
        _ value: OnPageHideAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pageHide,
            value: value?.attributeValue
        )
    }
}
