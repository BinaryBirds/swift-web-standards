//
//  OnOnlineAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnOnlineAttributeModifier {
    associatedtype OnOnlineAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnOnlineAttributeModifier where Self: Attributes & Mutable {

    public func onOnline(
        _ value: OnOnlineAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.online,
            value: value?.attributeValue
        )
    }
}
