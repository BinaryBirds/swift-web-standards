//
//  OnAfterPrintAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnAfterPrintAttributeModifier {
    associatedtype OnAfterPrintAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnAfterPrintAttributeModifier where Self: Attributes & Mutable {

    public func onAfterPrint(
        _ value: OnAfterPrintAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.afterPrint,
            value: value?.attributeValue
        )
    }
}
