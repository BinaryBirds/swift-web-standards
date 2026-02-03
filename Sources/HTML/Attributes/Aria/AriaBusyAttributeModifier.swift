//
//  AriaBusyAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol AriaBusyAttributeModifier {
    associatedtype AriaBusyAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaBusyAttributeModifier where Self: Attributes & Mutable {

    public func ariaBusy(
        _ value: AriaBusyAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.busy, value: value?.attributeValue)
    }
}
