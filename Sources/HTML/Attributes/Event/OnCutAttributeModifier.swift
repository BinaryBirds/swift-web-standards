//
//  OnCutAttributeModifier.swift
//  swift-web-standards
//
//  Created by Binary Birds on 2026. 01. 05.

import SGML

public protocol OnCutAttributeModifier {
    associatedtype OnCutAttributeValueType: AttributeValueRepresentable = String
}

extension OnCutAttributeModifier where Self: Attributes & Mutable {

    public func onCut(
        _ value: OnCutAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.cut, value: value?.attributeValue)
    }
}
