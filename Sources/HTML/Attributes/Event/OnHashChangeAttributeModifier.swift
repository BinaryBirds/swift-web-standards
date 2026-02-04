//
//  OnHashChangeAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnHashChangeAttributeModifier {
    associatedtype OnHashChangeAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnHashChangeAttributeModifier where Self: Attributes & Mutable {

    public func onHashChange(
        _ value: OnHashChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.hashChange,
            value: value?.attributeValue
        )
    }
}
