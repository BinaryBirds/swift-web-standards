//
//  OnBeforePrintAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnBeforePrintAttributeModifier {
    associatedtype
        OnBeforePrintAttributeValueType: AttributeValueRepresentable = String
}

extension OnBeforePrintAttributeModifier where Self: Attributes & Mutable {

    public func onBeforePrint(
        _ value: OnBeforePrintAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.beforePrint,
            value: value?.attributeValue
        )
    }
}
